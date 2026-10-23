package main

import "fmt"

func main() {
	var n int

	fmt.Print("Inserisci numero: ")
	fmt.Scan(&n)

	if n > 0 {
		fmt.Printf("+%d \n", n)
	} else {
		fmt.Printf("%d \n", n)
	}
}
