package main

import (
	"fmt"
	"os"
)

func addthis(a int, b int) (temp int) {
	temp = a + b
	return
	//comment
}

func main() {
	var a = 3
	var b = 2
	var sum = addthis(a, b)
	fmt.Println("Hello, everyone. How are you today", sum)
	fmt.Println(os.Getenv("GOPATH"))
}
