package main

import (
	"encoding/json"
	"flag"
	"io"
	"log/slog"
	"os"
	"strconv"
	"strings"
	"text/template"

	"github.com/iancoleman/strcase"
	"github.com/subchen/go-xmldom"
)

type Param struct {
	Name      string
	Type      string
	Mapping   string
	IsFunc    bool
	IsPointer bool
	IsVarArg  bool
}

func (p Param) PrintType() string {
	if p.Mapping == "void" {
		return "void"
	}

	px := p.Type
	if p.IsPointer {
		px += "*"
	}

	return px
}

type Method struct {
	Name          string
	ExternRef     string
	InstanceParam *Param
	Params        []*Param
	Return        *Param
}

type Class struct {
	ClassName    string
	Parent       string
	ExternRef    string
	Methods      []*Method
	Constructors []*Method
	Functions    []*Method
}

type Interface struct {
	InterfaceName string
	ExternRef     string
	Methods       []*Method
}

type CallbackAlias struct {
	Name       string
	Deprecated bool
	Return     *Param
	Params     []*Param
}

type Enum struct {
	Name  string
	Group string
	Type  string
	Set   map[string]int64
}

type Union struct {
	Name   string
	Fields []Field
}

type Module struct {
	Namespace       string
	Aliases         map[string]string
	Classes         []Class
	Interfaces      []Interface
	CallbackAliases []CallbackAlias
	Enums           []Enum
	Structs         []string
	Unions          []Union
	Includes        []string
	Functions       []*Method
}

type Namespace string

var bindingTemplate string

func outputClasses(includes []string, namespace string, ns *xmldom.Node) {
	nsk := Namespace(namespace)

	outVar := Module{
		Namespace:       namespace,
		Aliases:         aliases,
		Classes:         []Class{},
		CallbackAliases: []CallbackAlias{},
		Includes:        includes,
		Functions:       nsk.collectToplevelFunctions(ns, "function"),
	}

	for _, class := range ns.FindByName("class") {
		className := class.GetAttributeValue("name")
		cType := class.GetAttributeValue("type")
		parent := class.GetAttributeValue("parent")

		if !isInFilteredSymbols(className) {
			continue
		}

		outVar.Classes = append(outVar.Classes, Class{
			ClassName:    className,
			ExternRef:    cType,
			Parent:       convertExternalIdent(parent),
			Methods:      nsk.collectMethods(className, class, "method"),
			Functions:    nsk.collectMethods(className, class, "function"),
			Constructors: nsk.collectMethods(className, class, "constructor"),
		})

		visitedClasses[namespace+"::"+className] = true
	}

	for _, iface := range ns.FindByName("interface") {
		ifaceName := iface.GetAttributeValue("name")
		cType := iface.GetAttributeValue("type")

		if !isInFilteredSymbols(ifaceName) {
			continue
		}

		outVar.Interfaces = append(outVar.Interfaces, Interface{
			InterfaceName: ifaceName,
			ExternRef:     cType,
			Methods:       nsk.collectMethods(ifaceName, iface, "method"),
		})

		visitedClasses[namespace+"::"+ifaceName] = true
	}

	for _, callback := range ns.FindByName("callback") {
		callbackName := callback.GetAttributeValue("name")
		if callback.Parent != ns {
			continue
		}

		if !isInFilteredSymbols(callbackName) {
			continue
		}

		params := make([]*Param, 0)
		for _, param := range callback.FindByName("parameter") {
			params = append(params, nsk.getParam(param))
		}

		outVar.CallbackAliases = append(outVar.CallbackAliases, CallbackAlias{
			Name:       callbackName,
			Deprecated: callback.GetAttributeValue("deprecated") == "1",
			Return:     nsk.getParam(callback.FindOneByName("return-value")),
			Params:     params,
		})

		visitedClasses[namespace+"::"+callbackName] = true
	}

	for _, enum := range append(ns.FindByName("bitfield"), ns.FindByName("enumeration")...) {
		enumName := enum.GetAttributeValue("name")
		if !isInFilteredSymbols(enumName) {
			continue
		}
		enumType := "int"

		enumValMap := map[string]int64{}
		for _, enumVal := range enum.FindByName("member") {
			enumOpt := strings.ToUpper(enumVal.GetAttributeValue("name"))
			if enumOpt == "" {
				continue
			}

			if (enumOpt[0] < 'A' || enumOpt[0] > 'Z') && enumOpt[0] != '_' {
				enumOpt = strcase.ToScreamingSnake(enumName) + "_" + enumOpt
			}

			enumVal, err := strconv.ParseInt(enumVal.GetAttributeValue("value"), 10, 64)
			if err != nil {
				enumVal = -100900
			}

			if int(enumVal) > int(^uint32(0)>>1) {
				enumType = "long"
			}

			enumValMap[enumOpt] = enumVal
		}

		outVar.Enums = append(outVar.Enums, Enum{
			Name:  enumName,
			Group: strcase.ToScreamingSnake(enumName),
			Set:   enumValMap,
			Type:  enumType,
		})

		visitedClasses[namespace+"::"+enumName] = true
	}

	outVar.Structs = nsk.collectStructs(ns)
	outVar.Unions = nsk.collectUnions(ns)

	funcMap := template.FuncMap{
		"moduleToUnderscore": func(in string) string {
			return strings.ReplaceAll(in, "::", "_")
		},
		"sanClassName": func(in string) string {
			if strings.ToUpper(in) == in {
				return string(in[0]) + strings.ToLower(string(in[1:]))
			}

			return in
		},
		"snake": func(in string) string {
			return strcase.ToSnake(in)
		},
	}

	err := template.Must(template.New("c3").Funcs(funcMap).Parse(bindingTemplate)).
		Execute(os.Stdout, &outVar)
	if err != nil {
		slog.Error("error in executing template", "err", err)
	}
}

func analyzeGObjectIntrospection(doc *xmldom.Document, imports []string) {
	includes := imports
	for _, inc := range doc.Root.FindByName("include") {
		incl := strings.ToLower(inc.GetAttributeValue("name"))
		if strings.HasSuffix(incl, ".h") {
			continue
		}

		includes = append(includes, incl)
	}

	for _, ns := range doc.Root.FindByName("namespace") {
		outputClasses(includes, strings.ToLower(ns.GetAttributeValue("name")), ns)
	}
}

var filteredSymbols = map[string]bool{}

func isInFilteredSymbols(c string) bool {
	if len(filteredSymbols) == 0 {
		return true
	}

	shouldInclude, ok := filteredSymbols[c]
	if !ok {
		return true
	}
	return shouldInclude
}

var aliases = map[string]string{}

var visitedClasses = map[string]bool{}

func loadFilters(file string) {
	if file == "" {
		return
	}

	contents, err := os.ReadFile(file)
	if err != nil {
		return
	}

	for _, c := range strings.Split(string(contents), "\n") {
		c = strings.TrimSpace(c)
		if c == "" {
			continue
		}
		if strings.HasPrefix(c, "!") {
			filteredSymbols[strings.TrimPrefix(c, "!")] = false
		} else {
			filteredSymbols[c] = true
		}
	}
}

func loadAliases(file string) {
	if file == "" {
		return
	}

	contents, err := os.ReadFile(file)
	if err != nil {
		return
	}

	err = json.Unmarshal(contents, &aliases)
	if err != nil {
		panic(err)
	}

	for _, v := range aliases {
		visitedClasses[v] = true
	}
}

func main() {
	var templateFile string
	var filterFile string
	var aliasFile string
	var additionalImportsRaw string
	var additionalImports []string
	flag.StringVar(&filterFile, "filter", "", "Filter classes")
	flag.StringVar(&aliasFile, "aliases", "", "Alias known types (file)")
	flag.StringVar(&additionalImportsRaw, "imports", "", "Add additional imports (file)")
	flag.StringVar(&templateFile, "template", "", "Template file to generate files from")

	flag.Parse()

	loadAliases(aliasFile)
	loadFilters(filterFile)

	for _, imp := range strings.Split(additionalImportsRaw, ",") {
		imp = strings.TrimSpace(imp)
		if imp != "" {
			additionalImports = append(additionalImports, imp)
		}
	}

	content, err := os.ReadFile(templateFile)
	if err != nil {
		slog.Error("unable to read template file", "err", err)
		return
	}

	bindingTemplate = string(content)

	for _, file := range flag.Args() {
		doc, err := xmldom.ParseFile(file)
		if err != nil {
			slog.Error("unable to parse file", "err", err)
		}

		analyzeGObjectIntrospection(doc, additionalImports)
	}

	out := json.NewEncoder(io.Discard)
	out.SetIndent("", "  ")

	unvisitedClasses := map[string]bool{}
	for k, v := range visitedClasses {
		if v {
			continue
		}

		unvisitedClasses[k] = v
	}

	out.Encode(unvisitedClasses)
}
