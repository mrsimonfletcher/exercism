// Package clause.
package gigasecond

import (
	"fmt"
	"time"
)

const testVersion = 4 // find the value in gigasecond_test.go
const GIGASECOND = time.Duration(1e9) * time.Second

func AddGigasecond(date time.Time) time.Time {
	fmt.Printf("%b", GIGASECOND)
	return date.Add(GIGASECOND)
}
