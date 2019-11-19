/*http://www.sql-ex.ru/learn_exercises.php?LN=8*/

SELECT DISTINCT maker 
FROM product 
WHERE type = 'PC' and maker not in (SELECT maker FROM product p1 where p1.type = 'Laptop')
