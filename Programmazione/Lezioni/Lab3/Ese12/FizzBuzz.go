package main

import "fmt"

func main() {
	var n int

	fmt.Print("Insersci un numero: ")
	fmt.Scan(&n)

	if n%3 == 0 && n%5 == 0 {
		fmt.Println("Fizz Buzz")
	} else if n%3 == 0 {
		fmt.Println("Fizz")
	} else if n%5 == 0{
		fmt.Println("Buzz")
	}
}
