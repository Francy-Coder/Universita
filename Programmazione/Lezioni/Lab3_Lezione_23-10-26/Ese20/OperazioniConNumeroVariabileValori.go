package main

import "fmt"

func main() {
	var c int

	fmt.Print("Inserisci quantità di numeri: ")
	fmt.Scan(&c)

	var n, somma, valoreMinimo, valoreMassimo, interiUguali, interiMaggiori, interiMinori int

	fmt.Printf("Inserisci %d numeri:\n", c)
	for i := 1; i <= c; i++ {
		fmt.Scan(&n)

		somma += n

		if i == 1 {
			valoreMinimo = n
			valoreMassimo = n
		} else {
			if n < valoreMinimo {
				valoreMinimo = n
			}

			if n > valoreMassimo {
				valoreMassimo = n
			}
		}

		if n == 0 {
			interiUguali++
		} else if n > 0 {
			interiMaggiori++
		} else {
			interiMinori++
		}
	}

	fmt.Printf(
		"Somma = %d\n"+
			"Valore minimo = %d\n"+
			"Valore massimo = %d\n"+
			"Interi > 0 = %d\n"+
			"Interi < 0 = %d\n"+
			"Interi = 0 = %d\n",
		somma,
		valoreMinimo,
		valoreMassimo,
		interiMaggiori,
		interiMinori,
		interiUguali,
	)
}
