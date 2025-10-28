WITH avg_product AS (
SELECT kidhome + teenhome as tot_child, MntWines, MntFruits, MntMeatProducts, MntFishProducts,
MntSweetProducts, MntGoldProds, year_birth, income,
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
avg_category_customer AS (
SELECT category_customer, category_income,
AVG (COALESCE(MntWines, 0)) AS avg_wines,
AVG (COALESCE(MntFruits, 0)) AS avg_fruits,
AVG(COALESCE(MntMeatProducts,0)) AS avg_meat,
AVG(COALESCE(MntFishProducts, 0)) AS avg_fish,
AVG(COALESCE(MntSweetProducts, 0)) AS avg_sweet,
AVG(COALESCE(MntGoldProds, 0)) AS avg_gold
FROM avg_product
WHERE category_customer = 'Not family'
GROUP BY category_income
)
SELECT *
FROM avg_category_customer