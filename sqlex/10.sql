/*http://www.sql-ex.ru/learn_exercises.php?LN=10*/
/*Find the printer models having the highest price. Result set: model, price.*/

SELECT model, price 
FROM printer 
WHERE price IN (SELECT max(price) as max_price 
                FROM printer)
