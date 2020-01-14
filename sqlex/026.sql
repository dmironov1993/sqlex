/*Find out the average price of PCs and laptops produced by maker A.
Result set: one overall average price for all items.*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=26*/


SELECT AVG(price) FROM (SELECT price 
                        FROM product INNER JOIN pc ON product.model = pc.model 
                        WHERE maker='A'
                        UNION ALL
                        SELECT price 
                        FROM product INNER JOIN laptop ON product.model = laptop.model WHERE maker = 'A') as q
