/*http://www.sql-ex.ru/learn_exercises.php?LN=6*/

SELECT DISTINCT maker, speed 
FROM laptop l INNER JOIN product p on l.model = p.model 
WHERE l.hd >= 10
