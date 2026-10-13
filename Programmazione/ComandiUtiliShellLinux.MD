# Shell Linux

La **shell** è l'interfaccia che permette all'utente di interagire con il sistema operativo tramite comandi testuali. La più diffusa su Linux è **Bash**, che useremo per eseguire e gestire i nostri programmi.

## File System

Il file system è il modo in cui il sistema operativo organizza e gestisce i file. Ha una **struttura gerarchica ad albero**, con la directory `/` (root) come radice.

### Percorsi (path)

- **Percorso assoluto**: parte sempre dalla root, quindi inizia con `/`
  - `cd /home/utenti.unimi.it/nomeUtente/cartella`
- **Percorso relativo**: parte dalla directory corrente, quindi non inizia con `/`
  - `cd cartella/sottocartella`

### Navigazione

| Comando | Descrizione |
|---|---|
| `pwd` (*print working directory*) | Mostra la directory in cui ti trovi |
| `ls` (*list*) | Elenca file e cartelle della directory corrente (`ls -l` per i dettagli, `ls -a` per includere i file nascosti) |
| `cd <directory>` (*change directory*) | Si sposta nella directory indicata |
| `cd .` | Resta nella directory corrente |
| `cd ..` | Sale alla directory superiore (genitore) |
| `cd /` | Va nella root |

> **Attenzione ai nomi:** evitare spazi in nomi di file e cartelle. Se necessario, racchiudi il nome tra apici (`cd 'mia cartella'`). Meglio ancora usare `nome_file` o `nomeFile`.

### Gestione di file e directory

| Comando | Descrizione |
|---|---|
| `touch <file>` | Crea un file vuoto (es. `touch file.txt`). |
| `mkdir <directory>` | Crea una directory |
| `cp <origine> <destinazione>` | Copia un file |
| `cp -r <origine> <destinazione>` | Copia una directory (e il suo contenuto) |
| `mv <origine> <destinazione>` | Sposta o rinomina file e directory |
| `rm <file>` | Elimina un file |
| `rm -r <directory>` | Elimina una directory e il suo contenuto |

> `rm` **non** sposta i file nel cestino: l'eliminazione è definitiva. Usa `rm -r` con cautela.

Con `mv` e `cp` puoi usare percorsi relativi: `../` risale di una directory, quindi `../../` risale di due.

### Lettura e modifica dei file

| Comando | Descrizione |
|---|---|
| `cat <file>` | Stampa a schermo l'intero contenuto di un file di testo |
| `more <file>` | Come `cat`, ma mostra il contenuto una schermata alla volta (utile per file lunghi) |
| `pluma <file>` | Apre il file nell'editor di testo Pluma |

Finché Pluma è aperto, il terminale resta bloccato. Per evitarlo, avvialo in background aggiungendo `&`:
```bash
pluma <nome_file> &
```

### Esecuzione e documentazione

- `./<file>`: esegue un file eseguibile presente nella directory corrente (deve avere il permesso di esecuzione, assegnabile con `chmod +x <file>`)
- `man <comando>` (*manual*): mostra la documentazione di un comando; premi `q` per uscire

---

# Comandi Go

| Comando | Descrizione |
|---|---|
| `go fmt` | Formatta automaticamente il codice, applicando l'indentazione e lo stile standard di Go |
| `go run <programma.go>` | Compila ed esegue il programma Go indicato |
| `go build` | Compila il programma e genera un eseguibile |
| `go doc <nome>` / `go help <comando>` | Mostrano la documentazione di un pacchetto, di una funzione o di un comando |

## Moduli e pacchetti

- **`go mod init <nome_modulo>`**: crea un nuovo modulo Go, generando il file `go.mod`. Il modulo tiene traccia del nome del progetto e delle librerie esterne da cui dipende, e permette di compilare il codice da qualsiasi cartella del computer.
- **`main.go`**: è il nome convenzionale del file che contiene il punto di ingresso del programma. Deve dichiarare `package main` e contenere la funzione `main()`. Non è un comando: il file va creato (ad esempio con `touch main.go`).
- **`fmt`**: pacchetto della *libreria standard* di Go (per input/output formattato), importabile direttamente con `import "fmt"`, senza bisogno di installarlo. Esistono anche pacchetti esterni, che si aggiungono al modulo.

## Creare ed eseguire un eseguibile

```bash
go build -o <nome_eseguibile>   # compila e crea l'eseguibile con il nome scelto
./<nome_eseguibile>             # esegue il programma
```