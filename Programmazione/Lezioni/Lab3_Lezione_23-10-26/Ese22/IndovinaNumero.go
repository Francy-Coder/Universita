package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	var n, contatore int

	/* inizializzazione del generatore di numeri casuali */
	rand.Seed(int64(time.Now().Nanosecond()))

	/* generazione di un numero casuale compreso nell'intervallo
	   che va da 0 a 99 (estremi inclusi) */
	var numeroGenerato int = rand.Intn(100)

	for {
		contatore++
		fmt.Printf("Tentativo n° %d: ", contatore)
		fmt.Scan(&n)

		if n == numeroGenerato {
			fmt.Printf("Hai indovinato in %d tentativi!\n", contatore)
			break
		} else if n > numeroGenerato {
			fmt.Println("Troppo alto! Rirpova!")
		} else {
			fmt.Println("Troppo basso! Riprova!")
		}
	}
}
