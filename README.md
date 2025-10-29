<h1>Customer Personality Analysis</h1>

Analisi di un dataset che mette a confronto le differenti abitudini d’acquisto delle famiglie con figli rispetto a quelle senza figli, tenendo in considerazione le varie fasce d’età e di reddito. 

<h2>Team</h2>

| Nome | Ruolo |
| :---: | :---: |
| Giulia Franchina | Project manager |
| Elisa Scifo | Developer |
| Giulia Garraffo | Developer |

<h2>Dataset</h2>

Il dataset estratto da Kaggle (Customer Personality Analysis)  è uno studio approfondito dei clienti ideali di un’azienda. Serve a comprendere meglio i comportamenti, i bisogni e le preoccupazioni dei diversi tipi di clienti, così da poter adattare prodotti e strategie di marketing in modo più mirato.                                                    
In pratica, grazie a questa analisi, l’azienda può individuare quali segmenti di clientela sono più interessati a un determinato prodotto e concentrare su di essi gli sforzi e gli investimenti di marketing, invece di rivolgersi indistintamente a tutti i clienti.


<h2>Obiettivi dell’analisi</h2>

L’analisi ha come obiettivo principale quello di comprendere le abitudini di acquisto e il comportamento promozionale dei clienti in base a caratteristiche socio-economiche e familiari.
In particolare, si vuole:
1.	Confrontare le abitudini di acquisto tra famiglie con figli e senza figli, analizzando come variano in relazione alle diverse fasce d’età.
2.	Esaminare l’impatto del reddito sulle scelte di consumo, osservando come cambiano i comportamenti d’acquisto tra famiglie (con figli e senza figli) appartenenti a fasce di reddito basse rispetto a quelle con redditi più elevati.
3.	Analizzare l’adesione ai prodotti in promozione, distinguendo tra famiglie con figli e senza figli, e valutando come questa adesione varia al crescere del reddito.
4.	Valutare la partecipazione alle campagne promozionali (Cmp1, Cmp2, ecc.) per individuare eventuali differenze nel livello di risposta alle promozioni tra i vari segmenti di reddito e tipologia familiare.

<h2>Metodologia di analisi</h2>

Il dataset è stato caricato su DBeaver, dove sono state eseguite diverse query SQL per estrarre e rielaborare i dati necessari al calcolo delle tre metriche principali dell’analisi.

Successivamente, i risultati ottenuti dalle query sono stati esportati da DBeaver e importati in Google Sheets, dove sono stati creati i grafici per rappresentare in modo chiaro e intuitivo le variazioni dei dati e le relazioni tra le diverse variabili (fasce di reddito, presenza di figli, abitudini di acquisto e adesione alle campagne promozionali). 

<h2>Risultato finale</h2>

<h3>1. Analisi per fasce d’età</h3>

Famiglie con figli:
Mostrano una diminuzione generale della spesa nel tempo, soprattutto per gli alcolici e la carne.
Nonostante il calo, il vino resta il prodotto più acquistato.
Si nota una tendenza verso consumi più moderati e selettivi nelle generazioni più giovani.

Famiglie senza figli:
Spendono principalmente in vino e carne, con picchi nelle generazioni nate tra il 1970–74 e 1990–94.
Le generazioni più giovani (post 1995) mostrano spese più basse e orientate alla sostenibilità, segno di un cambiamento culturale e valoriale.

Conclusione:
Con l’età diminuisce la spesa complessiva, ma cambia anche la struttura dei consumi: le famiglie più giovani, specie senza figli, mostrano stili di vita più sobri e consapevoli.

<h3>2. Analisi per fasce di reddito</h3>

Famiglie con figli:
La spesa cresce con il reddito fino alla fascia “Alto”, poi diminuisce nella fascia “Molto alto”.
Le famiglie con redditi molto bassi spendono sorprendentemente di più in carne e beni di lusso rispetto alla fascia successiva.
Le famiglie più abbienti tendono invece a ridurre il consumo di carne e alcolici, probabilmente per motivi salutistici o di stile di vita.

Famiglie senza figli:
La spesa è proporzionale al reddito: più cresce il reddito, più aumenta la spesa, in particolare per vino e carne.
I redditi medi e alti sono i principali consumatori di prodotti di fascia più costosa.

Conclusione:
Il reddito incide direttamente sulle abitudini di spesa, ma in modo diverso tra le due categorie:

le famiglie con figli mostrano comportamenti più equilibrati e variabili;

quelle senza figli aumentano costantemente la spesa con il reddito.

<h3>3. Analisi sull’adesione alle promozioni</h3>

Famiglie con figli:
Non emerge una relazione lineare tra reddito e adesione alle promozioni.
Le famiglie “Medio-alte” e “Alte” sono le più propense a partecipare, anche più delle fasce povere.
La campagna 5 risulta la più efficace per la fascia alta di reddito.

Famiglie senza figli:
L’aderenza è inversamente proporzionale al reddito: le fasce più basse sono le più sensibili alle promozioni.
Le famiglie più abbienti mostrano un comportamento più selettivo e meno influenzato dal prezzo, preferendo campagne legate al valore e al brand.

Conclusione:
Le promozioni funzionano meglio sui redditi bassi e medi, ma la risposta dipende anche dalla presenza di figli:

chi ha figli tende a sfruttare le offerte in modo pragmatico;

chi non ha figli risponde solo se la promozione ha valore percepito o legame con la marca.

<h2>Conclusione generale</h2>

L’analisi ha messo in evidenza come le dinamiche di acquisto, il reddito e la risposta alle promozioni siano fortemente influenzate dalla struttura familiare.

Le famiglie con figli mostrano comportamenti più razionali e orientati al risparmio, con consumi mirati ai beni di prima necessità e una maggiore attenzione alle offerte. La loro partecipazione alle promozioni è pragmatica e legata alla gestione del budget familiare.

Al contrario, le famiglie senza figli evidenziano uno stile di consumo più libero e qualitativo, con una propensione maggiore alla spesa per prodotti di piacere e un interesse crescente verso scelte sostenibili e di valore.

Nel complesso, emerge che età, reddito e composizione familiare influenzano profondamente le strategie di acquisto e di risposta alle campagne promozionali, suggerendo alle aziende di personalizzare le proprie strategie di marketing in base a questi fattori.

