package main

import "fmt"

func main() {
	var parola, s1, s2 string

	fmt.Print("Inserisci una stringa senza spazi: ")
	fmt.Scan(&parola)

	for _, c := range parola {
		if c >= 65 && c <= 90 { // lettere maiuscole
			s1 += string(c)

			c += 'a' - 'A' // oppure anche c += 32 per questo esercizio
			s2 += string(c)

		} else if c >= 97 && c <= 122 { //lettere minuscole
			s2 += string(c)

			c -= 'a' - 'A' // oppure anche c -= 32 per questo esercizi
			s1 += string(c)

		} else { // altri caratteri
			s1 += string(c)
			s2 += string(c)
		}
	}
	fmt.Printf("Tutto maiuscolo: %s \nTutto minuscolo: %s\n", s1, s2)
}
