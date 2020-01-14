/*For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
Result set: speed, average price.*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=22*/

SELECT speed, AVG(price) AS avg_price 
FROM pc 
WHERE speed > 600 
GROUP BY speed
