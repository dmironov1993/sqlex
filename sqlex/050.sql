/*Find the battles in which Kongo-class ships from the Ships table were engaged.*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=50*/

SELECT distinct battle
FROM outcomes LEFT JOIN ships
ON outcomes.ship = ships.name
OR outcomes.ship = ships.class
WHERE class = 'Kongo'
