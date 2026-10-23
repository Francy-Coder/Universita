// Da correggere

package main

import "fmt"

func main() {
	var c int

	var n, somma, valoreMinimo, valoreMassimo, interiUguali, interiMaggiori, interiMinori int

	fmt.Print("Inserisci quantità di numeri voluti: ")
	fmt.Scan(&c)

	fmt.Printf("Inserisci %d numeri:\n", c)
	for i := 1; i <= c; i++ {
		fmt.Scan(&n)

		somma = somma + n

		if n < valoreMinimo { //sbagliato
			valoreMinimo = n
		}

		if n > valoreMassimo { //giusto ma ?
			valoreMassimo = n
		}

		if n == 0 {
			interiUguali += 1
		}else if n > 0 {
			interiMaggiori += 1
		}else if n < 0 {
			interiMinori += 1
		}
	}

	fmt.Printf("somma = %d \nvalore minimo = %d \nvalore massimo = %d \ninteri > 0 = %d \ninteri < 0 = %d \ninteri = 0 = %d \n", somma, valoreMinimo, valoreMassimo, interiMaggiori, interiMinori, interiUguali) 
}
