/*http://www.sql-ex.ru/learn_exercises.php?LN=36*/
/*List the names of lead ships in the database (including the Outcomes table).*/

SELECT DISTINCT name 
FROM (SELECT name
      FROM ships
      WHERE ships.name = ships.class
      UNION
      SELECT ship
      FROM outcomes, classes
      WHERE outcomes.ship = classes.class) t
