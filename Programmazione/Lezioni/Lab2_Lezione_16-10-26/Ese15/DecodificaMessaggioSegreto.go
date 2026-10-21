package main

import "fmt"

func main() {
	var n int

	fmt.Print("Inserisci un numero intero di 6 cifre: ")
	fmt.Scan(&n)

	test := n % 10
	fmt.Println(test)

	test = n % 100
	fmt.Print(test)

	test = n % 1000
	fmt.Println(test)

	test = n % 10000
	fmt.Println(test)

	test = n % 100000
	fmt.Println(test)

	fmt.Println("---------------------------------------------------")

	test = n % 10
	fmt.Println(test)

	test = n / 100
	fmt.Print(test)

	test = n / 1000
	fmt.Println(test)

	test = n / 10000
	fmt.Println(test)

	test = n / 100000
	fmt.Println(test)
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
