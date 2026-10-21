## 1. Struttura di un programma

```go
package main

import "fmt"

func main() {
    // codice
}
```

Più package: `import ( "fmt"; "math" )`, scritti uno per riga tra parentesi.

## 2. Variabili

| Sintassi | Significato |
| --- | --- |
| `var a int` | dichiara `a` intera (valore iniziale 0) |
| `var a int = 5` | dichiara e assegna |
| `var a, b int` | dichiara più variabili dello stesso tipo |
| `a := 5` | dichiara e deduce il tipo (solo dentro le funzioni) |
| `a = 7` | assegna a una variabile già dichiarata |

Regole:

- Una variabile va **dichiarata prima** di usarla.
- Una variabile va dichiarata **una sola volta** nello stesso blocco.
- `var a` senza tipo né valore è **errore**. Con `a := 10` il tipo è automatico.
- `:=` serve solo la prima volta; dopo si usa `=`.
- Ogni variabile dichiarata deve essere usata, altrimenti errore di compilazione.

## 3. Tipi principali

| Tipo | Esempio | Note |
| --- | --- | --- |
| `int` | `5`, `-3` | numeri interi |
| `float64` | `3.14`, `16.0` | numeri reali (punto, non virgola) |
| `string` | `"ciao"` | testo |

`x := 16.0` è `float64`; `x := 16` è `int`.

## 4. Operatori aritmetici

| Operatore | Significato | Esempio |
| --- | --- | --- |
| `+` `-` `*` | somma, differenza, prodotto | `3 * 4 = 12` |
| `/` | divisione | `5 / 2 = 2` (interi), `5.0 / 2.0 = 2.5` |
| `%` | resto (solo interi) | `5 % 2 = 1` |

**Divisione intera:** se entrambi gli operandi sono `int`, il risultato è `int` e la parte decimale viene eliminata.

| Operazione | `/` | `%` |
| --- | --- | --- |
| 4, 2 | 2 | 0 |
| 5, 2 | 2 | 1 |
| 8, 3 | 2 | 2 |
| 375, 10 | 37 | 5 |

Trucco: `n % 10` dà l'ultima cifra, `n / 10` toglie l'ultima cifra.

## 5. Input: `fmt.Scan`

```go
var n1, n2 int
fmt.Scan(&n1, &n2)
```

- `&` passa l'indirizzo della variabile, così `Scan` può scriverci il valore.
- Spazi e a capo sono equivalenti come separatori.
- Input troppo corto: il programma aspetta altri valori.
- Input troppo lungo: i valori in più restano nel buffer e vengono ignorati.
- Valore del tipo sbagliato: `Scan` si ferma con errore e le variabili non lette restano a 0 (con `3.5` in un `int` legge `3` e si blocca sul `.`).

## 6. Output: `Print` e `Println`

| Funzione | Spazi tra operandi | A capo finale |
| --- | --- | --- |
| `fmt.Println(...)` | sempre | sì |
| `fmt.Print(...)` | solo tra due operandi **non stringa** | no (serve `\n`) |

```go
fmt.Print("a:", 5, 6, "\n")     // a:5 6
fmt.Println("a:", 5, 6)          // a: 5 6
```

Con `Println`, un `float64` con decimali nulli si stampa senza `.0` (`16.0` diventa `16`).

## 7. Conversione di tipo (casting)

Sintassi: `tipo(valore)`, per esempio `float64(a)` o `int(x)`.

- Go **non** fa conversioni implicite: `float64(a) / b` con `b` int è **errore**.
- `int(3.9)` vale `3`: la parte decimale viene **troncata**, non arrotondata.

```go
a := 5
b := 2
r1 := a / b                       // 2     (int)
r2 := float64(a) / float64(b)     // 2.5   (float64)
r3 := float64(a / b)              // 2     (float64)
```

Regola pratica: per mantenere i decimali **converti prima** della divisione, non dopo.

## 8. Package `math`

| Espressione | Significato |
| --- | --- |
| `math.Sqrt(x)` | radice quadrata (x è `float64`) |
| `math.Sin(x)` | seno (x in radianti) |
| `math.Pi` | costante π |

Esempi: `math.Sqrt(16.0) = 4`; `math.Sin(math.Pi / 2) = 1`.

## 9. Formule per gli esercizi

| Esercizio | Formula |
| --- | --- |
| Rettangolo, perimetro | `2 * (base + altezza)` |
| Rettangolo, area | `base * altezza` |
| Cerchio, circonferenza | `2 * raggio * math.Pi` |
| Cerchio, area | `raggio * raggio * math.Pi` |
| Km in miglia | `miglia = km * 0.62137` |

Per cerchio e conversione usa `float64`, perché i risultati hanno decimali.

## 10. Errori tipici da evitare

| Errore | Correzione |
| --- | --- |
| `var a` senza tipo | `var a int` oppure `a := 10` |
| usare `c` prima di `var c int` | dichiarare prima di usare |
| `var d int` due volte | dichiarare una sola volta |
| `float64(a) / b` con `b` int | `float64(a) / float64(b)` |
| `5 / 2` aspettandosi `2.5` | usare almeno un operando `float64` |
| virgola nei decimali (`2,5`) | in Go si scrive `2.5` |
| `Scan(n1)` senza `&` | `Scan(&n1)` |

## 11. Output dei programmi del PDF (verifica)

| Programma | Output |
| --- | --- |
| Qual è l'output? 1 (input `5 6`) | `-1` |
| Qual è l'output? 2 | `50` |
| Trova l'errore (corretto) | `60` |
| Conversione di tipo | `r1: 2`, `r2: 2.5`, `r3: 2` |
| `x := 3.9; y := int(x)` | `x: 3.9`, `y: 3` |
