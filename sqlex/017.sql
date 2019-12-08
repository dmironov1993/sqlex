/*http://www.sql-ex.ru/learn_exercises.php?LN=17*/

/*Get the laptop models that have a speed smaller than the speed of any PC. 
Result set: type, model, speed.*/

SELECT DISTINCT type, product.model, speed 
FROM product INNER JOIN laptop ON product.model = laptop.model 
WHERE speed < (SELECT MIN(speed) FROM pc )
