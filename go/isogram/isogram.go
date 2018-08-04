package isogram

import (
	"strings"
	"unicode"
)

// IsIsogram checks whether a string is an isogram or not
func IsIsogram(word string) bool {
	letterInWord := make(map[rune]bool, len(word))

	for _, letter := range strings.ToLower(word) {
		if unicode.IsLetter(letter) && letterInWord[letter] {
			return false
		}
		letterInWord[letter] = true
	}
	return true
}
