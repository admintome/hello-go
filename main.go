package main

import (
	"fmt"
	"time"

	"github.com/JeffDeCola/hello-go/count"
)

// Looping forever - For testing concourse
// The function Addthis is not needed, but I put it in for fun.
func main() {
	var a = 0
	var b = 1
	for {
		a = count.Addthis(a, b)
		fmt.Println("Hello everyone, count is:", a)
		time.Sleep(3000 * time.Millisecond)
	}
}
