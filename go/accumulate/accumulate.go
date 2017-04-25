package accumulate

const testVersion = 1

func Accumulate(ob []string, fn func(string) string) []string {
	result := make([]string, len(ob))
	for i, v := range ob {
		result[i] = fn(v)
	}
	return result
}
