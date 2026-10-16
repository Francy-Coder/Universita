package main

import "fmt"

func main() {
	var n int

	fmt.Print("Secondi? ")
	fmt.Scan(&n)

	h := n / 3600
	m := (n % 3600) / 60
	s := n % 60

	fmt.Printf("h:m:sec - %d:%d:%d\n", h, m, s)
}
