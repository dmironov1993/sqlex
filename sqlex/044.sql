/*http://www.sql-ex.ru/learn_exercises.php?LN=44*/
/*Find all ship names beginning with the letter R*/

SELECT name 
FROM ships 
WHERE name like 'R%'
UNION
SELECT ship AS name 
FROM outcomes 
WHERE ship like 'R%'
