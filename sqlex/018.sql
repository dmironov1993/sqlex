/*http://www.sql-ex.ru/learn_exercises.php?LN=18*/
/*Find the makers of the cheapest color printers.
Result set: maker, price.*/

SELECT DISTINCT maker, price 
FROM product INNER JOIN printer ON product.model = printer.model 
WHERE printer.color = 'y' AND price IN (SELECT MIN(price) FROM printer WHERE color = 'y')
