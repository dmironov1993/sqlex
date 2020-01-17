/*http://www.sql-ex.ru/learn_exercises.php?LN=38*/
/*Find countries that ever had classes of both battleships (‘bb’) and cruisers (‘bc’).*/

SELECT country 
FROM classes 
WHERE type = 'bb'
INTERSECT
SELECT country 
FROM classes 
WHERE type = 'bc'
