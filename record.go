package main

import (
	"github.com/subchen/go-xmldom"
)

type FieldType uint

const (
	Data     FieldType = 0
	Callback FieldType = 1
	Packing  FieldType = 2
)

type Field struct {
	FieldType FieldType
	// Data Fields
	Type      string
	Name      string
	IsPointer bool
	// Packing Fields
	Bits uint
	// Callback Fields
	Callback CallbackAlias
}

type Struct struct {
	Name   string
	Fields []Field
}

func (ns Namespace) collectStructs(nsd *xmldom.Node) []string {
	structs := make([]string, 0)
	for _, record := range nsd.FindByName("record") {
		if record.Parent != nsd {
			continue
		}
		structName := record.GetAttributeValue("name")
		structs = append(structs, structName)

		visitedClasses[string(ns)+"::"+structName] = true

		// for _, field := range record.FindByName("field") {
		// 	fmt.Printf("`- %s\n", field.GetAttributeValue("name"))
		// }
	}

	return structs
}

func (ns Namespace) collectUnions(nsd *xmldom.Node) []Union {
	unions := make([]Union, 0)
	for _, un := range nsd.FindByName("union") {
		if un.Parent != nsd {
			continue
		}
		name := un.GetAttributeValue("name")
		if name[0] == '_' {
			continue
		}

		union := Union{
			Name:   name,
			Fields: []Field{},
		}

		for _, f := range un.FindByName("field") {
			fieldName := f.GetAttributeValue("name")
			typeNode := f.FindOneByName("type")
			aliasedName, _, isPointer := ns.getType(typeNode)

			union.Fields = append(union.Fields, Field{
				FieldType: Data,
				Type:      aliasedName,
				Name:      fieldName,
				IsPointer: isPointer,
			})
		}

		unions = append(unions, union)
	}

	return unions
}
