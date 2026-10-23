package main

import "fmt"

func main() {
	var a, b int

	fmt.Printf("Inserisci due numeri: \n")
	fmt.Scan(&a, &b)

	if b != 0 {
		r := float64(a) / float64(b)
		fmt.Println("Quoziente = ", r)
	} else {
		fmt.Println("Ipossibile")
	}
}
