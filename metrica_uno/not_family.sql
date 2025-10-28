WITH avg_product AS (
SELECT kidhome + teenhome as tot_child, MntWines, MntFruits, MntMeatProducts, MntFishProducts,
MntSweetProducts, MntGoldProds, year_birth,
CASE
WHEN (kidhome + teenhome) = 0 THEN 'Not family'
WHEN (kidhome + teenhome) >= 1 THEN 'Family'
ELSE 'Nothing'
END AS category_customer,
CASE
WHEN year_birth BETWEEN 1940 AND 1944 THEN '1940-1944'
WHEN year_birth BETWEEN 1945 AND 1949 THEN '1945-1949'
WHEN year_birth BETWEEN 1950 AND 1954 THEN '1950-1954'
WHEN year_birth BETWEEN 1955 AND 1959 THEN '1955-1959'
WHEN year_birth BETWEEN 1960 AND 1964 THEN '1960-1964'
WHEN year_birth BETWEEN 1965 AND 1969 THEN '1965-1969'
WHEN year_birth BETWEEN 1970 AND 1974 THEN '1970-1974'
WHEN year_birth BETWEEN 1975 AND 1979 THEN '1975-1979'
WHEN year_birth BETWEEN 1980 AND 1984 THEN '1980-1984'
WHEN year_birth BETWEEN 1985 AND 1989 THEN '1985-1989'
WHEN year_birth BETWEEN 1990 AND 1994 THEN '1990-1994'
ELSE '1995-1996'
END AS category_year
FROM marketing_campaign mc
WHERE year_birth BETWEEN 1940 AND 1996
GROUP BY year_birth
),
avg_category_customer AS (
SELECT category_customer, category_year,
AVG (COALESCE(MntWines, 0)) AS avg_wines,
AVG (COALESCE(MntFruits, 0)) AS avg_fruits,
AVG(COALESCE(MntMeatProducts,0)) AS avg_meat,
AVG(COALESCE(MntFishProducts, 0)) AS avg_fish,
AVG(COALESCE(MntSweetProducts, 0)) AS avg_sweet,
AVG(COALESCE(MntGoldProds, 0)) AS avg_gold
FROM avg_product
WHERE category_customer = 'Not family'
GROUP BY category_year
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