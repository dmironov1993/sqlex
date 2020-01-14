/*Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=21*/

SELECT product.maker, max(price) 
FROM product INNER JOIN pc ON product.model = pc.model 
GROUP BY product.maker
