/*http://www.sql-ex.ru/learn_exercises.php?LN=14*/

/*For the ships in the Ships table that have at least 10 guns, get the class, name, and country.*/

SELECT classes.class, name, country 
FROM classes INNER JOIN ships 
ON classes.class = ships.class 
WHERE classes.numGuns >= 10
