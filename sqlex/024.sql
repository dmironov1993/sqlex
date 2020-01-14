/*List the models of any type having the highest price of all products present in the database*/
/*http://www.sql-ex.ru/learn_exercises.php?LN=24*/

SELECT model
FROM (SELECT model, price FROM pc 
      UNION 
      SELECT model, price FROM laptop 
      UNION 
      SELECT model, price FROM printer) u
WHERE price IN (SELECT MAX(price) 
                FROM (SELECT price FROM pc 
                      UNION 
                      SELECT price FROM laptop 
                      UNION 
                      SELECT price FROM printer) q)
