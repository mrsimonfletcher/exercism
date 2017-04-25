package diffsquares

const testVersion = 1

func SquareOfSums(num int) int {
	sum := float64(1+num) * (float64(num) / 2)
	return int(sum * sum)
}

func SumOfSquares(num int) int {
	counter := 0
	for i := 1; i <= num; i++ {
		counter += i * i
	}
	return counter
}

func Difference(num int) int {
	return SquareOfSums(num) - SumOfSquares(num)
}
