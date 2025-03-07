package main

func nameNormalize(name string) string {
	switch name {
	case "def":
		return "defaultValue"
	case "foreach":
		return "for_each"
	case "module":
		return "_module"
	case "interface":
		return "iface"
	default:
		return name
	}
}
