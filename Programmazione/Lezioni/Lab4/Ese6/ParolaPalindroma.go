package main 

import "fmt"

func main() {
	var parola, s string

	fmt.Print("Inserisci una stringa senza spazi: ")
	fmt.Scan(&parola)

	for _, c := range parola {
		s = string(c) + s
	}

	if s == parola {
		fmt.Println("Palindroma")
	} else {
		fmt.Println("Non palindroma")
	}
}
