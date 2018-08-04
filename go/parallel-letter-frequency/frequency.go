package letter

type FreqMap map[rune]int

func Frequency(s string) FreqMap {
	m := FreqMap{}
	for _, r := range s {
		m[r]++
	}
	return m
}

func ConcurrentFrequency(texts []string) FreqMap {
	c := make(chan FreqMap)
	for _, t := range texts {
		go func(t string) {
			c <- Frequency(t)
		}(t)
	}

	result := FreqMap{}
	for i := 0; i < len(texts); i++ {
		for k, v := range <-c {
			result[k] += v
		}
	}
	return result
}
