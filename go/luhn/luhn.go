package luhn

import (
	"regexp"
	"strconv"
	"strings"
)

// Valid check whether a string is valid or not
func Valid(str string) bool {
	str = strings.Replace(str, " ", "", -1)

	if len(str) <= 1 || !onlyContainsIntAndSpaces(&str) {
		return false
	}

	return isValidLuhn(&str)
}

func onlyContainsIntAndSpaces(str *string) bool {
	matched, _ := regexp.MatchString("^[0-9]*$", *str)
	return matched
}

func isValidLuhn(str *string) bool {
	var num int
	for _, n := range buildSliceOfInts(str) {
		num += n
	}
	return num%10 == 0
}

func buildSliceOfInts(str *string) []int {
	var newSlice []int
	var index int
	strSlice := validSliceFromStr(str)
	for i := len(strSlice) - 1; i >= 0; i-- {
		charAsInt, _ := strconv.Atoi(strSlice[i])
		if index%2 != 0 {
			newSlice = append(newSlice, characterDouble(charAsInt))
		} else {
			newSlice = append(newSlice, charAsInt)
		}
		index++
	}

	return newSlice
}

func validSliceFromStr(str *string) []string {
	reg, _ := regexp.Compile("[^0-9]+")

	newStr := reg.ReplaceAllString(*str, "")
	return strings.Split(newStr, "")
}

func characterDouble(c int) int {
	double := c * 2
	if double > 9 {
		double = double - 9
	}
	return double
}
