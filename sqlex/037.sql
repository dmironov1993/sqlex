/*http://www.sql-ex.ru/learn_exercises.php?LN=37*/
/*Find classes for which only one ship exists in the database (including the Outcomes table).*/

SSELECT class
FROM (
      SELECT classes.class, name
      FROM ships, classes
      WHERE ships.class = classes.class
      UNION 
      SELECT classes.class, ship
      FROM outcomes, classes
      WHERE outcomes.ship = classes.class) t
GROUP BY t.class
HAVING COUNT(t.class) = 1
