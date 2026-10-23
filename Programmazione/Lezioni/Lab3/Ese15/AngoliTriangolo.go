package main

import "fmt"

func main() {
	var a, b int

	fmt.Print("Inserisci le ampiezze dei due angoli: ")
	fmt.Scan(&a, &b)

	c := a + b
	if c < 180 {
		c = 180 - c
		fmt.Printf("Ampiezza terzo angolo = %d° \n", c)
	} else {
		fmt.Println("I due angolo non appartengono ad un triangolo")
	}
}
