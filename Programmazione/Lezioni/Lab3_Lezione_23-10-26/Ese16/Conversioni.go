package main

import "fmt"

func main() {
	var n, v int

	fmt.Printf("Scegli la conversione:\n 1) secondi -> ore\n 2) secondi -> minuti\n 3) minuti - ore\n 4) minuti -> secondi\n 5) ore -> secondi\n 6) ore -> minuti\n 7) minuti -> giorni e ore\n 8) minuti -> anni e giorni\n : ")
	fmt.Scan(&n)

	if n == 1 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r1 := float64(v) / 3600
		fmt.Printf("%d secondi corrispondono a %f ore\n", v, r1)
	}

	if n == 2 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r2 := v / 60
		fmt.Printf("%d secondi corrispondono a %d minuti\n", v, r2)
	}

	if n == 3 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r3 := v / 60
		fmt.Printf("%d minuti corrispondono a %d ore\n", v, r3)
	}

	if n == 4 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r4 := v * 60
		fmt.Printf("%d minuti corrispondo a %d secondi\n", v, r4)
	}

	if n == 5 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r5 := v * 3600
		fmt.Printf("%d ore corrispondo a %d secondi\n", v, r5)
	}

	if n == 6 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		r6 := v * 60
		fmt.Printf("%d ore corrispondo a %d minuti\n", v, r6)
	}

	if n == 7 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		giorni := v / 1440
		ore := (v % 1440) / 60
		fmt.Printf("%d minuti corrispondono a %d giorni e %d ore\n", v, giorni, ore)
	}

	if n == 8 {
		fmt.Print("Inserisci il valore da convertire: ")
		fmt.Scan(&v)

		anni := v / 525600
		giorni := (v % 525600) / 1440
		fmt.Printf("%d minuti corrispondono a %d anni e %d giorni\n", v, anni, giorni)
	}

	if n < 1 || n > 8 {
		fmt.Println("Scelta errata")
	}
}
