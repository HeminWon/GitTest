package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello World!")

	env := os.Getenv("ENV")
	fmt.Println(env)
}
