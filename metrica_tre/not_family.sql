WITH avg_product AS (
SELECT kidhome + teenhome as tot_child, MntWines, MntFruits, MntMeatProducts, MntFishProducts, MntSweetProducts, 
MntGoldProds, year_birth, income, mc.NumDealsPurchases , mc.AcceptedCmp1 , mc.AcceptedCmp2 , mc.AcceptedCmp3 ,mc.AcceptedCmp4  ,mc.AcceptedCmp5  , 
CASE 
	WHEN (kidhome + teenhome) = 0 THEN 'Not family'
	WHEN (kidhome + teenhome) >= 1 THEN 'Family'
	ELSE 'Nothing' 
	END AS category_customer,
CASE 
	WHEN income < 15000 THEN 'Molto basso'
	WHEN income BETWEEN 15000 AND 30000 THEN 'Basso'
	WHEN income BETWEEN 30001 AND 50000 THEN 'Medio'
	WHEN income BETWEEN 50001 AND 80000 THEN 'Medio-Alto'
	WHEN income BETWEEN 80001 AND 150000 THEN 'Alto'
	WHEN income IS NULL THEN 'Null'
	ELSE 'Molto alto'
END AS category_income
FROM marketing_campaign mc 
WHERE year_birth BETWEEN 1940 AND 1996 
GROUP BY year_birth 
),
deals AS (
SELECT category_income, 
COUNT(*) as totale_clienti,
SUM(AcceptedCmp1) as num_partecipanti_cmp1 ,
SUM(AcceptedCmp2) as num_partecipanti_cmp2, 
SUM(AcceptedCmp3) as num_partecipanti_cmp3, 
SUM(AcceptedCmp4) as num_partecipanti_cmp4, 
SUM(AcceptedCmp5) as num_partecipanti_cmp5,
AVG (COALESCE(NumDealsPurchases , 0)) AS avg_deals_purchases
FROM avg_product
WHERE category_customer = 'Not family' 
GROUP BY category_income 
),
dominant_campaign_cte AS(
SELECT category_income, avg_deals_purchases, num_partecipanti_cmp1 ,num_partecipanti_cmp2 ,num_partecipanti_cmp3 ,num_partecipanti_cmp4 ,num_partecipanti_cmp5 , totale_clienti,
CASE 
	WHEN num_partecipanti_cmp1  > num_partecipanti_cmp2  AND num_partecipanti_cmp1  > num_partecipanti_cmp3 AND num_partecipanti_cmp1  > num_partecipanti_cmp4 AND num_partecipanti_cmp1  > num_partecipanti_cmp5 THEN 'cmp1'
	WHEN num_partecipanti_cmp2  > num_partecipanti_cmp1  AND num_partecipanti_cmp2  > num_partecipanti_cmp3 AND num_partecipanti_cmp2  > num_partecipanti_cmp4 AND num_partecipanti_cmp2  > num_partecipanti_cmp5 THEN 'cmp2'
	WHEN num_partecipanti_cmp3  > num_partecipanti_cmp1  AND num_partecipanti_cmp3  > num_partecipanti_cmp2 AND num_partecipanti_cmp3  > num_partecipanti_cmp4 AND num_partecipanti_cmp3  > num_partecipanti_cmp5 THEN 'cmp3'
	WHEN num_partecipanti_cmp4  > num_partecipanti_cmp1  AND num_partecipanti_cmp4  > num_partecipanti_cmp2 AND num_partecipanti_cmp4  > num_partecipanti_cmp3 AND num_partecipanti_cmp4  > num_partecipanti_cmp5 THEN 'cmp4'
	WHEN num_partecipanti_cmp5  > num_partecipanti_cmp1 AND num_partecipanti_cmp5  > num_partecipanti_cmp2 AND num_partecipanti_cmp5  > num_partecipanti_cmp3 AND num_partecipanti_cmp5  > num_partecipanti_cmp4 THEN 'cmp5'
	ELSE 'nessun valore'
END AS dominant_campaign
FROM deals
),
tasso_dominante AS(
SELECT category_income, avg_deals_purchases, dominant_campaign, 
CASE 
	WHEN dominant_campaign = 'cmp5' THEN (SELECT ROUND((num_partecipanti_cmp5 *1.0 / totale_clienti), 2) AS perc_cmp5) 
	WHEN dominant_campaign = 'cmp3' THEN (SELECT ROUND((num_partecipanti_cmp3 *1.0/ totale_clienti), 2) AS perc_cmp3)
	WHEN dominant_campaign = 'cmp4' THEN (SELECT ROUND((num_partecipanti_cmp4 *1.0/ totale_clienti), 2) AS perc_cmp4)
	WHEN dominant_campaign = 'cmp2' THEN (SELECT ROUND((num_partecipanti_cmp2 *1.0/ totale_clienti), 2) AS perc_cmp2)
	WHEN dominant_campaign = 'cmp1' THEN (SELECT ROUND((num_partecipanti_cmp1 *1.0/ totale_clienti), 2) AS perc_cmp1)
	ELSE '0'
END AS tasso_dominante
FROM dominant_campaign_cte
GROUP BY category_income 
)
SELECT *
FROM tasso_dominante
ORDER BY CASE category_income
   WHEN 'Molto basso' THEN 1
   WHEN 'Basso'       THEN 2
   WHEN 'Medio'       THEN 3
   WHEN 'Medio alto'  THEN 4
   WHEN 'Alto'        THEN 5
   WHEN 'Molto alto'  THEN 6
   ELSE 7
 END;