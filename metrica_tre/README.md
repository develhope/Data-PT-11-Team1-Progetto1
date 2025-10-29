<h1>ANALISI ADESIONE ALLE PROMOZIONI</h1>

<p>L'analisi finale si basa sulla correlazione tra la media di acquisti in promozione e le fasce di reddito,
considerando la campagna dominante di riferimento.</p>
<p> Partendo dalle due categorie oggetto d'analisi (famiglie con figli e famiglie senza figli), attraverso le query sql riportate nella cartella, sono stati filtrati i dati al fine di quantificare la spesa di prodotti in promozione e l'adesione alle diverse campagne promozionali da parte degli utenti appartenenti alle fasce di reddito indivudate nella seconda metrica.</p>
<h5><b>Fasce di reddito</b></h5>
<ul>
<li><15.000 → Molto basso</li> 
<li> 15.000-30.000 → Basso</li>
<li> 30.001-50.000 → Medio</li>
<li>50.001-80.000→ Medio-Alto</li> 
<li> 80.001-150.000→ Alto</li>
<li> 150.000→ Molto alto</li>
  </ul>
<h5> <b>Campagne promozionali</b> </h5>
  <ul>
  <li>Campagna 1</li> 
  <li> Campagna 2</li>
  <li> Campagna 3</li>
  <li>campagna 4 </li>
  <li>campagna 5 </li> 
</ul>
Per questa metrica sono state svolte due analisi:
  <ul>
<li>1) Calcolo della spesa media dei prodotti in promozione per ogni fascia di reddito e per ciascuna categoria (famiglie con e senza figli)</li>
<li>2) Calcolo della media del tasso di aderenza alle diverse campagne per ogni fascia di reddito e per ciascuna categoria; segue identificazione della campagna con maggiore aderenza </li>
</ul>
<p>Al fine di una migliore interpretazione, i dati ottenuti sono stati rappresentati in grafici mediante l'uso di Google Sheet.</p>
<p>Il primo grafico mostra l'andamento della spesa delle famiglie con figli</p>
<h3>Grafico famiglie con figli</h3>
<img width="600" height="371" alt="Adesione media alle promozioni per fascia di reddito" src="https://github.com/user-attachments/assets/a6927199-b3e6-40d2-b6df-a2190a2dfb41" />

<h5> Intepretazione </h5>
<p> Il grafico evidenzia che non esiste una correlazione lineare tra reddito e aderenza alle promozioni. Sebbene ci si potrebbe aspettare una maggiore partecipazione da parte degli utenti con redditi più bassi e una minore da parte di quelli con redditi più elevati, una parte  di dati mostra una tendenza opposta: nelle fasce “basso”, “medio” e “alto”, l’aderenza alle promozioni cresce all’aumentare del reddito, contrariamente a ciò che ci si aspetterebbe. I valori relativi a queste tre fasce potrebbero risultare particolarmente significativi poiché sono le più rappresentate nel dataset, cioè quelle con il maggior numero di utenti.</p>
<p>
Le famiglie con reddito “Medio alto” e “Molto alto” risultano infatti le più propense ad aderire alle promozioni, superando di alcuni punti anche la fascia “molto basso”, che si colloca al terzo posto.
Nel complesso, i valori registrati non consentono di formulare una generalizzazione chiara sull’influenza del reddito nei comportamenti d’acquisto dei prodotti in promozione: gli utenti con reddito 'Basso' e 'Alto' mostrano una frequenza di adesione simile, ottenendo lo stesso punteggio nel grafico. Questi due gruppi, inoltre, sono quelli che complessivamente aderiscono meno alle promozioni.
</p>
<h3>Grafico famiglie con figli</h3>
  <ul>Legenda
  <li>Campagna 1 : Rosso </li>
  <li> Campagna 2 : Blu </li>
  <li> Canpagna 3 : Verde </li>
  <li> Campagna 4 : Arancione</li>
  <li> Campagna 5 : Rosa </li>
  <li> Dati misti o mancanti: Giallo </li>
  </ul>


<img width="600" height="371" alt="Campagna Promozionale Dominante per Fascia di Reddito " src="https://github.com/user-attachments/assets/bc65a429-d693-4fe7-8279-9ecc6e2c3c6f" />

<h5> Intepretazione </h5>
<p>Il grafico mostra che  all'aumentare del reddito aumentano i tempi di aderenza alle promozioni. Le prime tre fasce analizzate (Molto basso- Medio) aderiscono maggiormente alla terza campagna promozionale, mentre gli utenti con reddito 'Medio alto' mostrano una maggiore propensione ad aderire alla quarta campagna promozionale. Coerentemente con quanto affermato, le famiglie con reddito 'Alto' aderiscono alla quinta campagna promozionale, nonchè ultima tra quelle fornite dal dataset. Questo gruppo di utenti è quello che mostra massima aderenza alla campagna dominante: una parte significativa degli utenti  appartenenti a tale fascia di reddito (>40%) aderiscono alla campagna dominante.  In linea con la tendenza emersa, gli utenti con reddito 'Molto alto' aderiscono poco alle campagne promozionali, con dati trascurabili riguardo all'adesione alla prima e alla quarta campagna promozionale (4%). </p>
