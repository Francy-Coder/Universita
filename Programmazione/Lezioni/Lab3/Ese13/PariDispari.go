package main

import "fmt"

func main() {
	var n int

	fmt.Print("Insersci un numero: ")
	fmt.Scan(&n)

	if n%2 == 0 {
		fmt.Printf("%d è pari\n", n)
	} else {
		fmt.Printf("%d è dispari\n", n)
	}
}
