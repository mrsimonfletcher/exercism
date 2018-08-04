package grains

import "fmt"

func Square(square int) (uint64, error) {
	if square < 1 || square > 64 {
		return 0, fmt.Errorf("Not a valid space: %v", square)
	}

	var total uint64 = 1
	for i := 2; i <= square; i++ {
		total *= 2
	}

	return total, nil
}

func Total() uint64 {
	var total uint64
	for i := 1; i <= 64; i++ {
		val, _ := Square(i)
		total += val
	}
	return total
}
