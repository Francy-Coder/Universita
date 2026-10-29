package main

import "fmt"

func main() {
	var n, contatore int
	var media float64

	fmt.Print("Inserisci una sequenza di numeri (interrompi con numer <= 0): ")

	for {
		fmt.Scan(&n)
		if n != 0 && n > 0 {
			media += float64(n)
			contatore++
		} else {
			media /= float64(contatore)
			break
		}
	}

	fmt.Println("Media artimetica:", media)
}
