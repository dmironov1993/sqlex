/*http://www.sql-ex.ru/learn_exercises.php?LN=8*/

SELECT DISTINCT maker 
FROM product 
WHERE type = 'PC' AND maker NOT IN (SELECT maker FROM product p1 WHERE p1.type = 'Laptop')
