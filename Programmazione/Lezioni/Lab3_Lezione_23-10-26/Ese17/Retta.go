package main

import "fmt"

func main() {
	var m, q, x, y float64

	fmt.Print("Inserisci m e q: ")
	fmt.Scan(&m, &q)

	fmt.Print("Inserisci x e y: ")
	fmt.Scan(&x, &y)

	risultato := m*x + q

	if y == risultato {
		fmt.Println("Il punto appartiene alla retta")
	} else if y > risultato {
		fmt.Println("Il punto sta sopra la retta")
	} else {
		fmt.Println("Il punto sta sotto la retta")
	}
}
