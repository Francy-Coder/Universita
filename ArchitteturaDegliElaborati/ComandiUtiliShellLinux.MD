# VHDL con GHDL e GTKWave

## 1. Creare e scrivere il file VHDL

```bash
vim <nome_file>.vhdl
```

Apre (o crea, se non esiste) il file VHDL con l'editor Vim.

Dentro Vim:
- `i` → entra in **modalità inserimento** per scrivere/modificare il testo
- `Esc` → torna alla modalità normale
- `:wq` + Invio → salva ed esce (`:q!` per uscire senza salvare)

## 2. Analizzare il file

```bash
ghdl -a <nome_file>.vhdl
```

**Analizza** il file (*analyze*): controlla errori di sintassi e semantica e, se tutto è corretto, lo aggiunge alla libreria di lavoro.

## 3. Testbench

1. Scrivi o recupera il testbench (un file VHDL con entity senza porte, che istanzia il componente da testare e genera gli stimoli).
2. Se manca qualcosa (ad esempio un componente o un segnale non dichiarato), correggi il codice.
3. Esci dall'editor e analizza anche il testbench:
   ```bash
   ghdl -a <nome_testbench>.vhdl
   ```

> **Ordine di analisi:** analizza prima i file dei componenti e poi il testbench, che ne dipende.

## 4. Elaborare ed eseguire la simulazione

```bash
ghdl -e <nome_entity_testbench>
```

**Elabora** (*elaborate*) il design e crea l'eseguibile. Va indicato il nome dell'**entity** del testbench (quello dichiarato nel codice), che non sempre coincide con il nome del file.

```bash
ghdl -r <nome_entity_testbench> --wave=wave.ghw
```

Esegue la simulazione e salva le forme d'onda nel file `wave.ghw`. In alternativa, se `ghdl -e` ha generato un eseguibile nella cartella corrente: `./<nome_entity_testbench> --wave=wave.ghw`.

> Se il testbench non termina da solo (ad esempio ha un clock infinito), aggiungi un limite di tempo: `--stop-time=1us`.

## 5. Visualizzare le forme d'onda

```bash
gtkwave wave.ghw
```

Apre GTKWave: seleziona i segnali dalla lista a sinistra e aggiungili alla finestra delle forme d'onda per analizzare la simulazione.
