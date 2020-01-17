/*http://www.sql-ex.ru/learn_exercises.php?LN=43*/
/*Get the battles that occurred in years when no ships were launched into water*/

SELECT name
FROM battles
WHERE NOT year(date) IN (SELECT launched 
                         FROM ships 
                         WHERE launched < 2019)
