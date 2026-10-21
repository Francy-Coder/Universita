package main

import "fmt"

func main() {
	var k int

	fmt.Print("Distanza (km) =")
	fmt.Scan(&k)

	m := float64(k) * 0.62137

	fmt.Println("Distnza (mi) =", m)
}
