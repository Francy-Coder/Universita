package main

import (
	"fmt"
	"math"
)

func main() {
	var r float64

	fmt.Print("Raggio =")
	fmt.Scan(&r)

	a := r * r * math.Pi
	c := 2 * r * math.Pi

	fmt.Println("Circonferenza =", c)
	fmt.Println("Area =", a)
}
