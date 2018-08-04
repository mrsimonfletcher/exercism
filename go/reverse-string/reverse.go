package reverse

import "strings"

// String returns a reversed string
func String(str string) string {
	buildSlice := make([]string, len(str))

	for _, char := range strings.Split(str, "") {
		buildSlice = append([]string{char}, buildSlice...)
	}
	return strings.Join(buildSlice, "")
}
