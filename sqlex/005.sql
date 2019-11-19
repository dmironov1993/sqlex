/*http://www.sql-ex.ru/learn_exercises.php?LN=5*/
/*Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.*/

SELECT model, speed, hd 
FROM pc 
WHERE price < 600 AND (cd = '12x' or cd = '24x')
