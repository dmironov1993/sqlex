/*http://www.sql-ex.ru/learn_exercises.php?LN=2*/
/*List all printer makers. Result set: maker.*/

SELECT DISTINCT maker 
FROM product
WHERE type = 'Printer'
