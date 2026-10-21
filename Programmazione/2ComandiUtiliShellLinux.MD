Ecco una versione ristrutturata. Ho riorganizzato il materiale in un flusso più logico (dal concetto al comando, dal comando all'esempio), ho eliminato le ripetizioni, uniformato le tabelle e aggiunto due piccoli esempi pratici per fissare i concetti.

---

# Shell Linux

La **shell** è l'interfaccia che permette di interagire con il sistema operativo tramite comandi testuali. Su Linux la più diffusa è **Bash**.

## 1. File system

Il file system organizza i file in una **struttura gerarchica ad albero**, con la directory `/` (*root*) come radice.

### Percorsi

| Tipo | Regola | Esempio |
|---|---|---|
| **Assoluto** | Parte dalla root, inizia con `/` | `cd /home/utenti.unimi.it/nomeUtente/cartella` |
| **Relativo** | Parte dalla directory corrente, non inizia con `/` | `cd cartella/sottocartella` |

Simboli utili nei percorsi relativi:

| Simbolo | Significato |
|---|---|
| `.` | Directory corrente |
| `..` | Directory superiore (genitore) |
| `../..` | Due livelli più in alto |

> **Nomi di file e cartelle:** evita gli spazi. Se proprio servono, racchiudi il nome tra apici (`cd 'mia cartella'`). Meglio usare `nome_file` o `nomeFile`.

## 2. Comandi di base

### Navigazione

| Comando | Descrizione |
|---|---|
| `pwd` | Mostra la directory corrente (*print working directory*) |
| `ls` | Elenca file e cartelle (*list*) |
| `ls -l` | Elenco dettagliato |
| `ls -a` | Include i file nascosti |
| `cd <directory>` | Si sposta nella directory indicata (*change directory*) |
| `cd ..` | Sale alla directory superiore |
| `cd /` | Va nella root |

### Gestione di file e directory

| Comando | Descrizione |
|---|---|
| `touch <file>` | Crea un file vuoto |
| `mkdir <directory>` | Crea una directory |
| `cp <origine> <destinazione>` | Copia un file |
| `cp -r <origine> <destinazione>` | Copia una directory con il suo contenuto |
| `mv <origine> <destinazione>` | Sposta o rinomina file e directory |
| `rm <file>` | Elimina un file |
| `rm -r <directory>` | Elimina una directory con il suo contenuto |

> ⚠️ **Attenzione:** `rm` non usa il cestino, l'eliminazione è **definitiva**. Usa `rm -r` con cautela.

### Lettura e modifica

| Comando | Descrizione |
|---|---|
| `cat <file>` | Stampa a schermo tutto il contenuto del file |
| `more <file>` | Mostra il contenuto una schermata alla volta (utile per file lunghi) |
| `pluma <file>` | Apre il file nell'editor Pluma |

Finché Pluma è aperto il terminale resta bloccato. Per evitarlo, avvialo in background con `&`:

```bash
pluma <nome_file> &
```

### Esecuzione e documentazione

| Comando | Descrizione |
|---|---|
| `./<file>` | Esegue un file nella directory corrente (serve il permesso di esecuzione) |
| `chmod +x <file>` | Assegna il permesso di esecuzione |
| `man <comando>` | Mostra il manuale del comando (*manual*); `q` per uscire |

### Esempio riassuntivo

```bash
mkdir progetto          # crea la cartella
cd progetto             # entra nella cartella
touch note.txt          # crea un file vuoto
cp note.txt copia.txt   # copia il file
mv copia.txt ../        # sposta la copia nella directory superiore
ls -l                   # controlla il contenuto
```

---

# Go

## 1. Comandi principali

| Comando | Descrizione |
|---|---|
| `go fmt` | Formatta il codice con indentazione e stile standard |
| `go run <programma.go>` | Compila **ed esegue** il programma |
| `go build` | Compila e genera un eseguibile |
| `go doc <nome>` | Mostra la documentazione di un pacchetto o di una funzione |
| `go help <comando>` | Mostra l'aiuto di un comando Go |

## 2. Moduli e pacchetti

- **Modulo**: si crea con `go mod init <nome_modulo>`, che genera il file `go.mod`. Il modulo registra il nome del progetto e le librerie esterne da cui dipende, e permette di compilare il codice da qualsiasi cartella.
- **`main.go`**: nome convenzionale del file con il punto di ingresso del programma. Deve dichiarare `package main` e contenere la funzione `main()`. Non è un comando: va creato (es. `touch main.go`).
- **Pacchetti**: la *libreria standard* (come `fmt`, per l'input/output formattato) si importa direttamente con `import "fmt"`, senza installazione. I pacchetti esterni invece vanno aggiunti al modulo.

## 3. Primo programma

Struttura minima di `main.go`:

```go
package main

import "fmt"

func main() {
    fmt.Println("Ciao, mondo!")
}
```

## 4. Flusso di lavoro completo

```bash
mkdir ciao && cd ciao       # crea e entra nella cartella
go mod init ciao            # inizializza il modulo
touch main.go               # crea il file sorgente
go fmt                      # formatta il codice
go run main.go              # prova il programma
go build -o ciao            # crea l'eseguibile "ciao"
./ciao                      # lo esegue
```

---

**Cosa ho cambiato, in breve:**
- Numerato le sezioni e raggruppato i comandi in modo più coerente (ho unito `ls -l`/`ls -a` come righe separate per leggibilità).
- Trasformato i percorsi e i simboli `.` / `..` in tabelle, così si confrontano a colpo d'occhio.
- Spostato `chmod` e `./` insieme, perché vanno usati in coppia.
- Aggiunto un esempio riassuntivo per la shell e un programma minimo per Go.
- Chiuso Go con un flusso di lavoro completo, che collega tutti i comandi visti.

Se vuoi, posso anche prepararlo come file `.md` o in versione più compatta, tipo schema o cheat sheet da stampare.
