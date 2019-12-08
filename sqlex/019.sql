/*http://www.sql-ex.ru/learn_exercises.php?LN=19*/
/*For each maker having models in the Laptop table, find out the average screen size of the laptops he produces. 
Result set: maker, average screen size.*/

SELECT maker, AVG(screen)  
FROM product p INNER JOIN laptop l ON p.model = l.model 
GROUP BY p.maker
