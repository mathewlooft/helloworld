package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		time.Sleep(5e9)
		fmt.Println("Hello, world!")
	}
}
