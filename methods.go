package main

import (
	"strings"

	"github.com/subchen/go-xmldom"
)

func (ns Namespace) getType(typeNode *xmldom.Node) (string, string, bool) {
	paramClass := typeNode.GetAttributeValue("name")
	aliasedClass, ok := aliases[paramClass]
	if !ok {
		aliasedClass = paramClass
	}

	aliasedClass = convertExternalIdent(aliasedClass)

	_, ok = visitedClasses[aliasedClass]
	if !ok {
		if strings.Contains(aliasedClass, "::") {
			visitedClasses[aliasedClass] = false
		} else {
			_, nok := visitedClasses[string(ns)+"::"+aliasedClass]
			if !nok {
				visitedClasses[string(ns)+"::"+aliasedClass] = false
			}
		}
	}

	paramType := typeNode.GetAttributeValue("type")
	aliasedType := aliases[paramType]
	if aliasedType == "" {
		aliasedType = paramType
	}

	isPointer := strings.HasSuffix(aliasedType, "*")

	return aliasedClass, aliasedType, isPointer
}

func (ns Namespace) getParam(param *xmldom.Node) *Param {
	if param == nil {
		return nil
	}

	paramName := nameNormalize(param.GetAttributeValue("name"))
	paramIsFunc := param.GetAttributeValue("closure") == "1"

	if param.FindOneByName("varargs") != nil {
		return &Param{
			Name:      "rest",
			Type:      "any",
			Mapping:   "any",
			IsFunc:    false,
			IsPointer: false,
		}
	}

	typeNode := param.FindOneByName("type")
	aliasedClass, aliasedType, isPointer := ns.getType(typeNode)

	return &Param{
		Name:      paramName,
		Type:      convertExternalIdent(strings.TrimSuffix(aliasedClass, "*")),
		Mapping:   aliasedType,
		IsFunc:    paramIsFunc,
		IsPointer: isPointer,
	}
}

func (ns Namespace) collectMethod(className string, method *xmldom.Node) *Method {
	methodName := nameNormalize(method.GetAttributeValue("name"))
	if !isInFilteredSymbols(className + "." + methodName) {
		return nil
	}

	externRef := method.GetAttributeValue("identifier")
	paramsNode := method.FindOneByName("parameters")

	params := make([]*Param, 0)
	var instanceParam *Param = nil
	if paramsNode != nil {
		for _, param := range paramsNode.FindByName("parameter") {
			params = append(params, ns.getParam(param))
		}
		instanceParam = ns.getParam(paramsNode.FindOneByName("instance-parameter"))
	}

	returnVal := ns.getParam(method.FindOneByName("return-value"))

	return &Method{
		Name:          methodName,
		ExternRef:     externRef,
		InstanceParam: instanceParam,
		Params:        params,
		Return:        returnVal,
	}
}

func (ns Namespace) collectMethods(className string, class *xmldom.Node, tag string) []*Method {
	functions := class.FindByName(tag)
	methods := make([]*Method, 0)
	for _, method := range functions {
		m := ns.collectMethod(className, method)
		if m != nil {
			methods = append(methods, m)
		}
	}

	return methods
}

func (ns Namespace) collectToplevelFunctions(nsk *xmldom.Node, tag string) []*Method {
	functions := nsk.FindByName(tag)
	methods := make([]*Method, 0)
	for _, method := range functions {
		if method.Parent != nsk {
			continue
		}

		m := ns.collectMethod("global", method)
		if m != nil {
			methods = append(methods, m)
		}
	}

	return methods
}

func convertExternalIdent(ident string) string {
	if !strings.Contains(ident, ".") {
		return ident
	}

	splits := strings.SplitN(ident, ".", 2)
	ns := strings.ToLower(splits[0])
	return ns + "::" + splits[1]
}
