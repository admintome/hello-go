package main

import (
	"fmt"
	"os"
)

func addthis(a, b int) int {
	return a + b
	//comment
}

func main() {
	var a = 3
	var b = 2
	var sum = addthis(a, b)
	fmt.Println("Hello, everyone. How are you", sum)
	fmt.Println(os.Getenv("GOSPATH"))
}
