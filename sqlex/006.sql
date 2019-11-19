/*http://www.sql-ex.ru/learn_exercises.php?LN=6*/

/*For each maker producing laptops with a hard drive capacity of 10 Gb or higher,*/ 
/*find the speed of such laptops. Result set: maker, speed.*/

SELECT DISTINCT maker, speed 
FROM laptop l INNER JOIN product p ON l.model = p.model 
WHERE l.hd >= 10
