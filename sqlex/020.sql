/*http://www.sql-ex.ru/learn_exercises.php?LN=20*/
/*Find the makers producing at least three distinct models of PCs.
Result set: maker, number of PC models.*/

SELECT maker, COUNT(model) as qty_model 
FROM product WHERE type = 'PC' 
GROUP BY maker 
HAVING COUNT(model) >=3
