/*http://www.sql-ex.ru/learn_exercises.php?LN=1*/
/*Find the model number, speed and hard drive capacity for all the PCs with prices below $500.
Result set: model, speed, hd.*/

SELECT model, speed, hd
FROM PC
WHERE price < 500
