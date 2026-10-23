package main

import "fmt"

func main() {
	var n int

	fmt.Print("Insersci il voto: ")
	fmt.Scan(&n)

	if n <= 100 && n > 0 {
		if n >= 90 && n <= 100 {
			fmt.Println("Ottimo")
		} else if n >= 80 && n < 90 {
			fmt.Println("Distinto")
		} else if n >= 70 && n < 80 {
			fmt.Println("Buono")
		} else if n >= 60 && n < 70 {
			fmt.Println("Sufficiente")
		} else {
			fmt.Println("Insufficiente")
		}
	}else{
		fmt.Println("Errore")
	}
}
