<h1>ANALISI PER FASCE DI REDDITO</h1>

Il dataset, in questa fase di analisi, è stato diviso per fasce di reddito:
1. <15.000 → Molto basso
2. 15.000-30.000 → Basso
3. 30.001-50.000 → Medio
4. 50.001-80.000→ Medio-Alto
5. 80.001-150.000→ Alto
6. >150.000→ Molto alto
<p>
Grazie a questa suddivisione è possibile constatare la differenza della spesa media per
ogni gruppo di utenti
</p><p>
Il filtraggio dei dati è stato eseguito attraverso query SQL, di cui si riportano i file nella cartella.
</p>
<p>Per ciascun prodotto esaminato e per ciascuna categoria di utenti (famiglie/non famiglie) appartenenti alle fasce di reddito indivudate, è stata calcolata la spesa media degli ultimi due anni.
</p>

Al fine di una migliore interpretazione, i dati ottenuti sono stati rappresentati in grafici mediante l'uso di Google Sheet. <br>
Il primo grafico mostra l'andamento della spesa delle famiglie con figli 
<img width="833" height="515" alt="Media spesa per categoria e fascia di reddito " src="https://github.com/user-attachments/assets/5160828b-467e-4f4a-ad4a-55e6a9b51d6f" />
Il secondo grafico, in contrapposizione, l'andamento della spesa delle famiglie senza figli
<img width="592" height="367" alt="Image" src="https://github.com/user-attachments/assets/ebd5a81a-1c17-4d4f-8207-d16d83eae1f4" /> 
<p>
Dal primo grafico emerge che per le categorie centrali, cioè da ‘Basso’ a ‘Alto’, <b>la spesa è direttamente proporzionale al reddito: all'aumentare del reddito aumenta anche la spesa</b>. 
Tuttavia, tra le prime due e tra le ultime due categorie la tendenza sembra ribaltarsi. Analizzando la prima coppia (spesa delle famiglie con reddito ‘Molto basso’ e ‘Basso’) emerge che la prima fascia di reddito mostra una spesa complessiva maggiore della seconda, con differenze considerevoli nella spesa di <b>carne</b>  (58 per ‘Molto basso’ e 15 per ‘Basso’) e <b>beni di lusso </b>(31 per la prima fascia, 12 per la seconda). I valori delle altre tipologie di prodotti sono simili, seppure maggiori nella fascia ‘Molto basso’. </p>
<p>
Analogamente, gli utenti appartenenti alla fascia massima di reddito (‘Molto alto’) sembrano spendere meno sia rispetto agli utenti della fascia precedente (‘Alto’), che rispetto a quelli della fascia ‘Medio-alto’. Particolarmente significativa è la differenza nella spesa in <b>alcolici</b>: le famiglie con reddito molto alto spendono  ⅓  rispetto a quelle con reddito medio-alto, e solo ⅙ rispetto alle famiglie con reddito alto. Dal punto di vista qualiativo, tali risultati potrebbero suggerire una maggiore attenzione allo stile di vita da parte delle famiglie più abbienti. </p> <p>
Altro calo notevole riguarda il consumo di <b>carne e pesce</b>. La fascia ‘Molto alto’ registra un calo del 70% nella spesa media di carne, e del 60% in quella di pesce rispetto alla fascia ‘Alto’. Infatti, i prodotti in questione registrano il massimo di spesa nella fascia ‘Alto’. </p> <p>
All’aumentare del reddito accresce la spesa in alcolici, i quali rappresentano il prodotto più acquistato da quasi tutte le fasce di reddito. 
Il prodotto meno acquistato, invece, è la frutta. Le differenze di spesa pptrebbero essere attribuite anche al valore economico dei prodotti analizzati: gli ortaggi solitamente hanno un costo decisamente inferiore rispetto ad alcolici e prodotti di origine animale. </p>
<p>
I dolci sono il prodotto meno acquistato dalle prime quattro categorie(molto basso - medio alto), insieme alla frutta, la quale resta il prodotto meno acquistato anche dagli altri due gruppi. Si registra, dunque, una spesa in dolci leggermente maggiore da parte delle famiglie con reddito alto e molto alto. 
  </p>
<p>
Dal secondo grafico  è possibile constatare la differenza della spesa media per singolo cliente senza figli, tenendo in considerazione anche i valori nulli esclusi riferiti agli anni 1961, 1983 e 1986. I soggetti con redditi alti e medio alti possiedono una spesa media maggiore per il vino
rispetto alle altre categorie, con una spesa media all’interno del range 500-1.000€ ogni due anni, e in seconda posizione il consumo di carne.</p>
<p>
Coerente con il reddito disponibile, le altre fasce possiedono abitudini di spesa nettamente inferiori a causa della loro posizione reddituale. </p>
<p>
La spesa generale per tutti i prodotti, infatti, risulta essere proporzionale al reddito disponibile
indipendentemente dalla tipologia di prodotto.
<p>

</p>


