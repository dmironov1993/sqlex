/*http://www.sql-ex.ru/learn_exercises.php?LN=42*/
/*Find the names of ships sunk at battles, along with the names of the corresponding battles.*/

SELECT ship, battle
FROM outcomes
WHERE result = 'sunk'
