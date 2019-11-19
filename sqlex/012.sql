/*http://www.sql-ex.ru/learn_exercises.php?LN=12*/

/*Find out the average speed of the laptops priced over $1000.*/

SELECT AVG(speed) as avg_speed 
FROM laptop 
WHERE price > 1000
