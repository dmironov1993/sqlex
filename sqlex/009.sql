/*http://www.sql-ex.ru/learn_exercises.php?LN=9*/

/*Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.*/

SELECT DISTINCT maker 
FROM product 
WHERE model IN (SELECT model 
                FROM pc 
                WHERE speed >= 450)
