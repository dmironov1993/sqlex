/*http://www.sql-ex.ru/learn_exercises.php?LN=28*/
/*Using Product table, find out the number of makers who produce only one model.*/

SELECT COUNT(*) FROM (SELECT maker, COUNT(maker) AS qty
                      FROM product
                      GROUP BY maker
                      HAVING COUNT(maker) = 1) b
