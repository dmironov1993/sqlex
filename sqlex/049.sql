/*Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table).*/
/*http://www.sql-ex.ru/learn_exercises.php*/

SELECT distinct name
FROM classes, ships
WHERE classes.class = ships.class AND bore = 16
UNION
SELECT distinct ship
FROM outcomes, classes
WHERE outcomes.ship = classes.class AND bore = 16
