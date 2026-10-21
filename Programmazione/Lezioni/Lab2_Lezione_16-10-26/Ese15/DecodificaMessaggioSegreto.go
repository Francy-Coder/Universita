package main

import "fmt"

func main() {
	var n int

	fmt.Print("Messaggio codificato: ")
	fmt.Scan(&n)

	// Estrarre i tre blocchi di due cifre usando divisione intera
	// Da 768654 otteniamo: 76, 86, 54

	// Primo blocco (ultime 2 cifre, posizione 5-6 da destra)
	blocco3 := n % 100

	// Secondo blocco (cifre 3-4 da destra)
	blocco2 := (n / 100) % 100

	// Terzo blocco (cifre 1-2 da destra)
	blocco1 := (n / 10000) % 100

	// Invertire l'ordine dei blocchi
	// blocco1=76, blocco2=86, blocco3=54
	// Dopo inversione: 54, 86, 76
	primo_originale := blocco3 - 10
	secondo_originale := blocco2 - 10
	terzo_originale := blocco1 - 10

	fmt.Printf("Primo numero originale: %d\n", primo_originale)
	fmt.Printf("Secondo numero originale: %d\n", secondo_originale)
	fmt.Printf("Terzo numero originale: %d\n", terzo_originale)
}

/*	Numero Criptato:
	-	Numeri aumentati di 10 > 123456 --(codifica)--> 214466
	-	Numeri invertiti > 123 --(codifica)--> 321


	Decodifica:
	-	Dividere il numero in tre blocchi (##, ##, ##) --> invertire l'ordine --> sottrarre 10

	Supposizioni:
	-	La variabile "n" è composta da 6 numeri (uniti)
	-	Ciascun blocco contiene un numero di due cifre compreso tra 10 e 89.
*/
