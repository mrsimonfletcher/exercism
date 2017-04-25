package acronym

import (
	"strings"
)

const testVersion = 2

func Abbreviate(str string) string {
	output := ""
	for _, v := range strings.Split(str, " ") {
		output += string(v[0])
	}
	return strings.ToUpper(output)
}
