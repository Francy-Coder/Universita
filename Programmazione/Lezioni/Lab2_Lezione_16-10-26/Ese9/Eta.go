package main

import (
	"fmt"
	"math"
)

func main() {
	var eta1, eta2 int
	
	fmt.Print("Età persona 1 =")
	fmt.Scan(&eta1)

	fmt.Print("Età persona 2 =")
	fmt.Scan(&eta2)

	// Inizio Calcoli

	somma := eta1 + eta2
	fmt.Println("Somma età =", somma)

	media := float64(somma) / 2
	fmt.Println("Media età =", media)

	mediaDifetto := math.Floor(media)
	fmt.Println("Media età arrotondata per difetto all'interno inferiore =", mediaDifetto)

	mediaEccesso := math.Ceil(media)
	fmt.Println("Media età arrotondata per eccesso all'interno inferiore =", mediaEccesso)

	somma = eta1 + eta2 + 20
	fmt.Println("Somma età a 10 anni =", somma)

	media = float64(somma) / 2
	fmt.Println("Media età a 10 anni =", media)
}
