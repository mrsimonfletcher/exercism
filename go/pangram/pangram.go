package pangram

import (
	"strings"
)

const testVersion = 1

func IsPangram(phase string) bool {
	visited := make(map[string]bool)

	lower := strings.ToLower(phase)

	for _, v := range lower {
		if v > 122 || v < 65 {
			continue
		}

		if !visited[string(v)] {
			visited[string(v)] = true
		}
	}

	return len(visited) == 26
}
