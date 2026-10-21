package main

import "fmt"

func main() {
	var b, h int

	fmt.Print("Inserisci la base: ")
	fmt.Scan(&b)

	fmt.Print("Inserisci l'altezza: ")
	fmt.Scan(&h)

	p := 2 * (b + h)
	a := b * h

	fmt.Println("Perimetro =", p)
	fmt.Println("Area =", a)
}
