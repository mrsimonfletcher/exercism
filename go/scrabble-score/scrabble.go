package scrabble

import "strings"

// LetterToSlice struct for storing the score for a character
type LetterToSlice struct {
	letters []string
	value   int
}

var lettersToScoreSlice = []LetterToSlice{
	{
		letters: []string{
			"A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
		},
		value: 1,
	},
	{
		letters: []string{"D", "G"},
		value:   2,
	},
	{
		letters: []string{"B", "C", "M", "P"},
		value:   3,
	},
	{
		letters: []string{"F", "H", "V", "W", "Y"},
		value:   4,
	},
	{
		letters: []string{"K"},
		value:   5,
	},
	{
		letters: []string{"J", "X"},
		value:   8,
	},
	{
		letters: []string{"Q", "Z"},
		value:   10,
	},
}

func sliceContainsChar(chars []string, str string) bool {
	for _, char := range chars {
		if char == strings.ToUpper(str) {
			return true
		}
	}
	return false
}

func characterScore(str string) int {
	for index, a := range lettersToScoreSlice {
		if sliceContainsChar(a.letters, str) {
			return lettersToScoreSlice[index].value
		}
	}
	return 0
}

func scoreSlice(chars []string) int {
	score := 0
	for _, char := range chars {
		score += characterScore(char)
	}
	return score
}

// Score returns the scrabble score for a word
func Score(word string) int {
	wordSlice := strings.Split(word, "")
	return scoreSlice(wordSlice)
}
