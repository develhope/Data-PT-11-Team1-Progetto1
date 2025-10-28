<p align="justify">
<h1>ANALISI FASCE D'ETA'</h1>  

Questa prima metrica risulta essenziale per capire la relazione che intercorre tra le coorti quinquennali 
di nascita dei clienti e la spesa media relativa a diverse categorie di prodotto.

L'analisi è stata svolta filtrando i dati del dataset in modo da identificare due categorie oggetto d'analisi: <b>famiglie con figli e famiglie senza figli</b>. Ulteriori fasi di filtraggio mirano a suddividere gli utenti di ogni categoria in fasce secondo l'anno di nascita. Ai fini dell'analisi sono state definite undici fasce.
- 1940-1945
- 1945-1950
- 1950-1955
- 1955-1960
- 1960-1965
- 1965-1970
- 1970-1975
- 1975-1980
- 1980-1985
- 1985-1990
- 1990-1995

Il filtraggio dei dati è stato eseguito attraverso query SQL, di cui si riportano i file nella cartella.

Per ciascun prodotto esaminato e per ciascuna categoria di utenti è stata calcolata la spesa media degli ultimi due anni di ogni coorte.
<br>

Al fine di una migliore interpretazione, i dati ottenuti sono stati rappresentati in grafici mediante l'uso di Google Sheet.

Il primo grafico, di seguito riportato, mostra l'andamento della spesa di famiglie con figli.

<img width="802" height="438" alt="Comportamento d'acquisto" src="https://github.com/user-attachments/assets/d3522fa6-3397-47c9-b8a5-2720f385de8d" />


Il grafico evidenzia un calo generale nella spesa delle famiglie. Il più notevole riguarda l'acquisto degli alcolici, la cui spesa diminuisce drasticamente nel tempo rispetto agli altri prodotti.Tuttavia, anche nell'ultima fascia temporale resta la tipologia di prodotto con spesa maggiore. Gli alcolici sembrano il tipo di prodotto maggiormente acquistato dagli utenti nati nel primo quinquennio analizzato. In questa fascia temporale il vino registra la sua spesa massima, per poi diminuire nel quinquennio successivo.  Il quinquennio compreso tra il 1980 e 1985 è quello che registra il calo maggiore. Diminuisce considerevolmente anche il consumo di carne, arrivando a ⅓ nell’ultimo arco temporale analizzato rispetto al punto di partenza. Il prodotto viene acquistato in maggiore quantità dagli utenti nati nella prima metà degli anni ‘50. Si noti come il consumo di carne resta nettamente superiore rispetto al pesce, altro prodotto di origine animale presente nel dataset, la cui spesa resta pressoché invariata nel tempo. Se ne evidenza un lieve aumento nel primo decennio. Situazione analoga riguarda la spesa di frutta, dolciumi, e beni di lusso. Questi ultimi, sorprendentemente, registrano una spesa maggiore rispetto ai beni di prima necessità.
<br>
Il secondo grafico mostra l'andamento della spesa di famiglie senza figli.



Conclusioni
</p>

