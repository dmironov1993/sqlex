/*http://www.sql-ex.ru/learn_exercises.php?LN=46*/
/*For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns.*/

SELECT distinct ship, displacement, numGuns
FROM classes LEFT JOIN ships
ON classes.class = ships.class
RIGHT JOIN outcomes
ON outcomes.ship = ships.name OR outcomes.ship = ships.class
WHERE battle = 'Guadalcanal'
