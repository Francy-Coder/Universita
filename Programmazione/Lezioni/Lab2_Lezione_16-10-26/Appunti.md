# Riepilogo Lezione 
- Slide: [Lezione 2 - Variabili e IO](https://github.com/LabProgrammazione1/Lab_2026-27/blob/main/Lezione_2/Lab2.pdf)

## 1. `fmt.Scan`
Legge da **standard input** e salva i valori nelle variabili passate **con `&`** (l'indirizzo della variabile).

```go
var n1, n2, n3, n4 int
fmt.Scan(&n1, &n2, &n3, &n4)
```

Cosa succede nei vari casi (le domande dell'esercizio):
- **Input su righe diverse:** funziona comunque, perché `Scan` tratta spazi e a capo come separatori.
- **Meno numeri del richiesto:** il programma resta in attesa degli altri valori (oppure le variabili non lette restano a 0 se l'input termina).
- **Più numeri del richiesto:** quelli in eccesso vengono ignorati, restano nel buffer.
- **Valore non intero** (reale, lettera, parola): `Scan` si ferma con un errore e le variabili restano al valore di default (0).

## 2. `Print` vs `Println`
- **`Print`**: stampa **di seguito**, senza andare a capo e senza spazi automatici tra tutti gli argomenti (devi usare `\n` a mano).
- **`Println`**: **stampa a capo** e mette uno spazio tra gli argomenti, quindi la **formattazione è migliore**.

## 3. Output (input `5 6`)
```go
r = a - b   // 5 - 6
fmt.Println(r)  // -1
```

## 4. Output
```go
a = a + b   // 10 + 20 = 30
c = a + b   // 30 + 20 = 50
```
Stampa **50**. Nota: `a` viene **modificata**, quindi il secondo calcolo usa il nuovo valore di `a`.

## 5. Trova l'errore
Errori individuati:
1. `var a` senza tipo --> **manca il tipo**. Si scrive `var a int = 10`, oppure `a := 10` (il tipo viene dedotto automaticamente).
2. `c = 30` usata **prima** di essere dichiarata (`var c int` viene dopo) --> **dichiarare prima di usare**.
3. `d` dichiarata **due volte** (`var b, d int` e poi `var d int = ...`) --> ridichiarazione non permessa.
4. Parentesi **in più** in `fmt.Println((d))`.

## Modulo e divisione intera
- Con operandi **interi**, `/` fa la **divisione intera** (scarta la parte decimale), mentre `%` dà il **resto**.
- `4 / 2 = 2`, `4 % 2 = 0`
- `5 / 2 = 2`, `5 % 2 = 1`
- `8 / 3 = 2`, `8 % 3 = 2`
- `375 / 10 = 37`, `375 % 10 = 5` (utile per estrarre le cifre)

`:=` dichiara e assegna insieme (tipo dedotto), mentre `=` assegna soltanto a una variabile già esistente.

## Package `math`
Per usare altri package, `import` con le parentesi:
```go
import (
    "fmt"
    "math"
)
```
- `math.Sqrt(x)` --> radice quadrata (`Sqrt(16.0) = 4`)
- `math.Sin(...)` --> seno
- `math.Pi` --> costante π

Nota: `16.0` viene dedotto come **float64**, e `math.Sqrt` richiede un float64.

## 6. Conversione di tipo (cast)
```go
a := 5; b := 2
r1 := a / b                     // 2   (int, divisione intera)
r2 := float64(a) / float64(b)   // 2.5 (float64)
r3 := float64(a / b)            // 2   (stampa 2, anche se è float64)
```
- **Convertire prima della divisione** (`r2`): la divisione avviene tra float, quindi si ottiene **2.5**.
- **Convertire dopo** (`r3`): prima si fa la divisione intera (2), **poi** si converte in float --> il valore resta 2 (il decimale è già perso).
- **Da float a int** (`int(3.9)`): la parte decimale viene **troncata** (non arrotondata) --> `3`.
- **`float64(a) / b`** (senza convertire `b`): dà **errore di compilazione**, perché Go non permette operazioni tra tipi diversi (`float64` e `int`) senza conversione esplicita.

## Concetti chiave da ricordare
- `Scan` vuole sempre `&variabile`.
- Dichiara le variabili **prima** di usarle e **una sola volta**.
- Go è **fortemente tipizzato**: niente operazioni miste tra tipi diversi senza cast.
- `int / int` = divisione intera; per ottenere i decimali devi convertire gli **operandi** a `float64`.
- `:=` = dichiarazione + assegnazione con tipo dedotto.