/*Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher. 
Result set: maker*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=23*/


SELECT DISTINCT maker 
FROM product INNER JOIN pc ON product.model = pc.model 
WHERE speed >= 750 AND maker IN (SELECT maker 
                                 FROM product INNER JOIN laptop ON product.model = laptop.model 
                                 WHERE speed >= 750)
