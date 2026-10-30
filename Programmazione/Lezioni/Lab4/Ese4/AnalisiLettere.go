package main

import "fmt"

func main() {
	var s string
	var numeroMaiuscole, numeroMinuscole, numeroVocali, numeroConsonanti int

	fmt.Print("Inserisci una stringa senza spazi: ")
	fmt.Scan(&s)

	for _, c := range s {
		if c >= 65 && c <= 90 {
			numeroMaiuscole++
		} else if c >= 97 && c <= 122 {
			numeroMinuscole++		
		}
		
		if c == 'A' || c == 'a' || c == 'E' || c == 'e' || c == 'I' || c == 'i' || c == 'O' || c == 'o' || c == 'U' || c == 'u' {
			numeroVocali++		
		} else {
			numeroConsonanti++
		}
	}

	fmt.Printf("Maiuscole: %d \nMinuscole: %d \nVocali: %d \nConsonanti: %d\n",
		numeroMaiuscole, numeroMinuscole, numeroVocali, numeroConsonanti)
}

// maiuscole, dal 65 al 90
// minuscole, dal 97 al 122


