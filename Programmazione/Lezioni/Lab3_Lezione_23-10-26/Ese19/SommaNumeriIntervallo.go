package main

import "fmt"

func main() {
	var a, b, risultato int

	fmt.Print("Inserisci l'intervallo: ")
	fmt.Scan(&a, &b)

	for i := a; i < b; i++ {
		if i%2 == 0 {
			risultato = risultato + i
		}
	}
	fmt.Println("Somma =", risultato)
}
