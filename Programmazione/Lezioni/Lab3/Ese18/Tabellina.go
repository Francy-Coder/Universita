package main

import "fmt"

func main() {
	var n int

	fmt.Print("Inserisci un numero: ")
	fmt.Scan(&n)

	for i := 1; i <= 10; i++ {
		r := i * n
		fmt.Printf("%d x %d = %d \n", i, n, r)
	}
}
