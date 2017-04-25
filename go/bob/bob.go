package bob // package name must match the package name in bob_test.go

import (
	"strings"
	"unicode"
)

const testVersion = 2 // same as targetTestVersion

func Hey(str string) string {
	switch {
	case strings.Replace(str, " ", "", -1) == "":
		return "Fine. Be that way!"
	case run_check(str, unicode.IsUpper) && !run_check(str, unicode.IsLower):
		return "Whoa, chill out!"
	case str[len(str)-1] == '?':
		return "Sure."
	default:
		return "Whatever."
	}
}

func run_check(str string, fun func(rune) bool) bool {
	for _, item := range str {
		if fun(item) {
			return true
		}
	}
	return false
}
