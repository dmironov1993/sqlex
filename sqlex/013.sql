/*http://www.sql-ex.ru/learn_exercises.php?LN=13*/

/*Find out the average speed of the PCs produced by maker A.*/

SELECT AVG(speed) 
FROM pc INNER JOIN product 
ON pc.model = product.model 
WHERE product.maker = 'A'
