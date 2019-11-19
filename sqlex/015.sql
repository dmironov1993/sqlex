/*http://www.sql-ex.ru/learn_exercises.php?LN=15*/

/*Get hard drive capacities that are identical for two or more PCs. 
Result set: hd.*/

SELECT DISTINCT hd 
FROM pc WHERE hd in (SELECT hd 
                     FROM pc 
                     GROUP BY hd 
                     HAVING count(hd) >= 2)
