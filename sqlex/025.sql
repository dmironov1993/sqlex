/*Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity. 
Result set: maker.*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=25*/

SELECT DISTINCT maker
FROM product, pc
WHERE product.model = pc.model
AND ram = (SELECT MIN(ram) from pc)
AND speed = (SELECT MAX(speed) 
             FROM pc 
             WHERE ram IN (SELECT MIN(ram) 
                           FROM pc))
AND maker IN (SELECT maker 
              FROM product 
              WHERE type='Printer')
