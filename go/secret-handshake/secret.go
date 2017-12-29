package secret

import "fmt"

const testVersion = 2

func Handshake(i uint) []string {
	n := int64(3)
	fmt.Printf("%b", n) // 1111011
	return make([]string, 0)
}
