/*http://www.sql-ex.ru/learn_exercises.php?LN=3*/
/*Find the model number, RAM and screen size of the laptops with prices over $1000.*/

SELECT DISTINCT model, RAM, screen
FROM Laptop
WHERE price > 1000
