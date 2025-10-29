<p align="justify">
<h1>ANALISI FASCE D'ETA'</h1>  

Questa prima metrica risulta essenziale per capire la relazione che intercorre tra le coorti quinquennali 
di nascita dei clienti e la spesa media relativa a diverse categorie di prodotto.

<p>L'analisi è stata svolta filtrando i dati del dataset in modo da identificare due categorie oggetto d'analisi: <b>famiglie con figli e famiglie senza figli</b>. Ulteriori fasi di filtraggio mirano a suddividere gli utenti di ogni categoria in fasce quinquennali secondo l'anno di nascita. Ai fini dell'analisi sono state definite undici fasce L'arco temporale esaminato va dal 1940, primo anno con dati disponibili sulle famiglie, al 1995.</p>
<ul>
<li>1940-1945</li>
<li>1945-1950 </li>
<li>1950-1955 </li>
<li> 1955-1960 </li>
<li> 1960-1965 </li>
<li> 1965-1970 </li>
<li> 1970-1975 </li>
<li> 1975-1980 </li>
<li>1980-1985 </li>
<li>1985-1990 </li>
<li>1990-1995 </li>
</ul>
Il filtraggio dei dati è stato eseguito attraverso query SQL, di cui si riportano i file nella cartella.

Per ciascun prodotto esaminato e per ciascuna categoria di utenti è stata calcolata la spesa media degli ultimi due anni di ogni coorte.
<br>

Al fine di una migliore interpretazione, i dati ottenuti sono stati rappresentati in grafici mediante l'uso di Google Sheet.

Il primo grafico, di seguito riportato, mostra l'andamento della spesa di famiglie con figli nell'arco temporale analizzato.

<img width="802" height="438" alt="Comportamento d'acquisto" src="https://github.com/user-attachments/assets/d3522fa6-3397-47c9-b8a5-2720f385de8d" />

<p>
Il grafico evidenzia un calo generale nella spesa delle famiglie. Il più notevole riguarda l'acquisto degli alcolici, la cui spesa diminuisce drasticamente nel tempo rispetto agli altri prodotti. Tuttavia, anche nell'ultima fascia temporale gli alcolici restano la tipologia di prodotto con spesa maggiore. Gli alcolici sembrano il tipo di prodotto maggiormente acquistato dagli utenti nati nel primo quinquennio analizzato. E' in questa fascia temporale che il vino registra la sua spesa massima, per poi diminuire nel quinquennio successivo.  </p> <p>Il quinquennio compreso tra il 1980 e 1985 è quello che registra il calo maggiore. Diminuisce considerevolmente anche il consumo di carne, arrivando a ⅓ rispetto al punto di partenza nell’ultima fascia analizzata . Il prodotto viene acquistato in maggiore quantità dagli utenti nati nella prima metà degli anni ‘50. Si noti come il consumo di carne resta nettamente superiore rispetto al pesce, altro prodotto di origine animale presente nel dataset, la cui spesa resta pressoché invariata nel tempo. Se ne evidenza un lieve aumento nel primo decennio. Situazione analoga riguarda la spesa di frutta, dolciumi, e beni di lusso. Questi ultimi, sorprendentemente, registrano una spesa maggiore rispetto ai beni di prima necessità.</p>
<br>
Il secondo grafico mostra l'andamento della spesa di famiglie senza figli:
<img width="1113" height="692" alt="Image" src="https://github.com/user-attachments/assets/03a93555-c44b-4918-b184-81def5db5fcb" />

<p>
Dall’analisi emerge che il vino e la carne costituiscono le principali voci di spesa, distaccandosi nettamente dalle altre categorie e confermando la loro centralità nei consumi alimentari di questa tipologia di nucleo familiare. </p> <p>In particolare, si osservano picchi significativi nella spesa per carne e vino tra le coorti 1970–1974 e 1990–1994, a indicare una maggiore propensione al consumo di prodotti di qualità o a più alto valore aggiunto da parte di queste generazioni. La coorte 1970–1974 registra il valore massimo assoluto di spesa in carne, mentre quella del 1990–1994 si distingue per un’elevata spesa in vino. A partire dai nati dopo il 1995, si rileva invece un netto calo della spesa media in tutte le categorie, segnale di un possibile cambiamento strutturale nei modelli di consumo. Tale riduzione potrebbe riflettere una minore capacità di spesa o una maggiore attenzione al risparmio, ma anche un diverso orientamento culturale, più attento alla sostenibilità e al contenimento degli eccessi. </p> <p> L’andamento complessivo non appare lineare, ma piuttosto disomogeneo, suggerendo che le differenze osservate non sono esclusivamente riconducibili all’età, bensì a fattori socioeconomici e generazionali specifici. </p> <p>In sintesi, le famiglie senza figli mostrano una forte concentrazione della spesa su beni discrezionali come vino e carne, mentre le generazioni più giovani sembrano manifestare preferenze di consumo più sobrie e selettive, delineando un’evoluzione delle abitudini
alimentari che le imprese del settore dovrebbero considerare in ottica strategica.</p>


Conclusioni
</p>

