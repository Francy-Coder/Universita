package main

import "fmt"

func main() {
	var n int

	fmt.Print("Inserisci un numero: ")
	fmt.Scan(&n)

	if n > 1 {
		for i := 0;  i < n; i++ {
			for j := 0; j < n; j++ {
				if i == 0 || j == n-1 || i == j {
					fmt.Print("*")				
				} else {
					fmt.Print(" ")
				}
			}
			fmt.Println()
		}

		for i := 0;  i < n; i++ {

			for z := 0; z < n-1; z++ {
				fmt.Print(" ")			
			}

			for j := 0; j < n; j++ {
				if j == 0 || i == n-1 || i == j {
					fmt.Print("*")				
				} else {
					fmt.Print(" ")
				}
			}
			fmt.Println()
		}
	} else {
		fmt.Println("Input non valido")
	}
}
