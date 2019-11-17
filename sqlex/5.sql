/*http://www.sql-ex.ru/learn_exercises.php?LN=5*/

SELECT model, speed, hd 
FROM pc 
WHERE price < 600 and (cd = '12x' or cd = '24x')
