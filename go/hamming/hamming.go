package hamming

import "fmt"

const testVersion = 5

func Distance(str1, str2 string) (int, error) {
	if len(str1) != len(str2) {
		return 0, fmt.Errorf("Strands must be the same length\n%s\n%s", str1, str2)
	}

	counter := 0
	for i := 0; i < len(str1); i++ {
		if str1[i] != str2[i] {
			counter++
		}
	}

	return counter, nil
}
