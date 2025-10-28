WITH family AS(
SELECT 
CASE
	WHEN income IS NULL THEN 'Indefinito'
      WHEN income < 15000 THEN 'Molto basso'
      WHEN income >= 15000 AND income < 30000 THEN 'Basso'
      WHEN income >= 30000 AND income < 50000 THEN 'Medio'
      WHEN income >= 50000 AND income < 80000 THEN 'Medio alto'
      WHEN income >= 80000 AND income < 150000 THEN 'Alto'
      WHEN income >= 150000 THEN 'Molto alto'
      END as Categoria,
       CASE
      WHEN income IS NULL THEN 'n.d.'
      WHEN income < 15000 THEN '< 15.000 €'
      WHEN income >= 15000 AND income < 30000 THEN '15.000 – 29.999 €'
      WHEN income >= 30000 AND income < 50000 THEN '30.000 – 49.999 €'
      WHEN income >= 50000 AND income < 80000 THEN '50.000 – 79.999 €'
      WHEN income >= 80000 AND income < 150000 THEN '80.000 – 149.999 €'
      WHEN income >= 150000 THEN '≥ 150.000 €'
      ELSE 'n.d.'
    END AS Fascia_reddito,
	mntwines,
    MntFruits,
    MntMeatProducts,
    MntSweetProducts,
    MntGoldProds,
    MntFishProducts,
    kidhome,
    teenhome
    FROM marketing 
)
SELECT 
categoria,fascia_reddito,
FLOOR(AVG(mntwines))  AS avg_wines,
  FLOOR(AVG(MntFruits))      AS avg_fruits,
  FLOOR(AVG(MntMeatProducts)) AS avg_meat,
  FLOOR(AVG(MntSweetProducts))AS avg_sweets,
  FLOOR(AVG(MntFishProducts)) AS avg_fish,
  FLOOR(AVG(MntGoldProds)) AS avg_gold
FROM family
WHERE COALESCE(kidhome,0) >= 1 OR COALESCE(teenhome,0) >= 1
GROUP BY categoria, fascia_reddito
ORDER BY CASE categoria
    WHEN 'Molto basso' THEN 1
    WHEN 'Basso'       THEN 2
    WHEN 'Medio'       THEN 3
    WHEN 'Medio alto'  THEN 4
    WHEN 'Alto'        THEN 5
    WHEN 'Molto alto'  THEN 6
    ELSE 7
  END;
