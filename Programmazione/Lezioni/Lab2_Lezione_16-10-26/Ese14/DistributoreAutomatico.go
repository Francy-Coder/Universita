package main

import "fmt"

func main() {
	var prezzo, denaro int

	fmt.Print("Prezzo del prodotto (centesimi): ")
	fmt.Scan(&prezzo)

	fmt.Print("Denaro inserito (centesimi): ")
	fmt.Scan(&denaro)

	if denaro >= prezzo {
		resto := denaro - prezzo
		fmt.Printf("Resto: %d centesimi\n", resto)

		var m2e, m1e, m50c, m20c, m10c, m5c, m2c, m1c, totale int

		m2e = resto / 200   // 365 / 200 = 1 (moneta usata)
		resto = resto % 200 // 365 - 200 = 165 (resto aggiornato)

		m1e = resto / 100   // 165 / 100 = 1
		resto = resto % 100 // 165 - 100 = 65

		m50c = resto / 50  // 65 / 50 = 1
		resto = resto % 50 // 65 - 10 = 15

		m10c = resto / 10  // 15 / 10 = 1
		resto = resto % 10 // 15 - 10 = 5

		m5c = resto / 5   // 5 / 5 = 1
		resto = resto % 5 // 5 - 5 = 0

		m2c = resto / 2   // 2 / 0 = 0
		resto = resto % 2 // 0

		m1c = resto / 1   // 1 / 0 = 0
		resto = resto % 2 // 0

		totale = m2e + m1e + m50c + m20c + m10c + m5c + m2c + m1c

		fmt.Println("Monete da 2 euro:", m2e)
		fmt.Println("Monete da 1 euro:", m1e)
		fmt.Println("Monete da 50 centesimi:", m50c)
		fmt.Println("Monete da 20 centesimi:", m20c)
		fmt.Println("Monete da 10 centesimi:", m10c)
		fmt.Println("Monete da 5 centesimi:", m5c)
		fmt.Println("Monete da 2 centesimi:", m2c)
		fmt.Println("Monete da 1 centesimo:", m1c)
		fmt.Println("Totale monete:", totale)

	} else {
		fmt.Println("Denaro insufficiente")
	}
}
