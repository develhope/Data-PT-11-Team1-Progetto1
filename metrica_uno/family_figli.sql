WITH filtered AS (
 SELECT
   (CAST(year_birth AS SIGNED) - (CAST(year_birth AS SIGNED) % 5)) AS anno_start,
   mntwines,
   MntFruits,
   MntMeatProducts,
   MntSweetProducts,
   MntGoldProds,
   MntFishProducts,
   CASE
     WHEN COALESCE(kidhome,0) >= 1 OR COALESCE(teenhome,0) >= 1 THEN 'con_figli'
     ELSE 'senza_figli'
     END AS famiglia
 FROM marketing
 WHERE year_birth IS NOT NULL
   AND CAST(year_birth AS SIGNED) BETWEEN 1940 AND 1999
)
SELECT
 CONCAT(anno_start, '-', anno_start + 4) AS quinquiennio,
 FLOOR(AVG(mntwines))  AS avg_wines,
 FLOOR(AVG(MntFruits))      AS avg_fruits,
 FLOOR(AVG(MntMeatProducts)) AS avg_meat,
 FLOOR(AVG(MntSweetProducts))AS avg_sweets,
 FLOOR(AVG(MntFishProducts)) AS avg_fish,
 FLOOR(AVG(MntGoldProds)) AS avg_gold
FROM filtered
WHERE famiglia = 'con_figli'
GROUP BY anno_start
ORDER BY anno_start;

