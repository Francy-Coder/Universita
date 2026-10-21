package main

import "fmt"

func main() {
	var a, b int

	fmt.Println("Inserisci due numeri: ")
	fmt.Scan(&a, &b)

	q := a / b
	r := a % b

	fmt.Println("Quoziente: ", q)
	fmt.Println("Resto: ", r)
}
