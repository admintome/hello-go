package main

import (
	"fmt"
	"os"
	"time"

	"github.com/JeffDeCola/hello-go/count"
)

// Looping forever - For testing concourse
func main() {
	var a = 0
	var b = 1
	for {
		a = a + 1
		var sum = count.Addthis(a, b)
		fmt.Println("Hello, everyone. How are you today?  I will count up every 3 seconds: ", sum)
		fmt.Println(os.Getenv("GOPATH"))
		time.Sleep(3000 * time.Millisecond)
	}
}
