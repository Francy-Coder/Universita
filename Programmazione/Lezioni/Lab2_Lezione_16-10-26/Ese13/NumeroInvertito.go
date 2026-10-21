package main

import "fmt"

func main() {
	var n int

	fmt.Print("Inserisci un numero: ")
	fmt.Scan(&n)

	a := n % 10 //terzo numero --> primo numero

	//pas = passaggio
	pas := n / 10 //primo e secondo numero

	b := pas % 10 //primo e secondo numero --> secondo numero

	c := pas / 10 //primo e secondo numero --> primo numero

	risultato := a*100 + b*10 + c*1
	fmt.Println(risultato)
}
