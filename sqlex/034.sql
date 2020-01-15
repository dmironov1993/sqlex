/*http://www.sql-ex.ru/learn_exercises.php?LN=34*/
/*In accordance with the Washington Naval Treaty concluded in the beginning of 1922, 
it was prohibited to build battle ships with a displacement of more than 35 thousand tons. 
Get the ships violating this treaty (only consider ships for which the year of launch is known). 
List the names of the ships.*/

SELECT distinct name
FROM ships, classes
WHERE ships.class = classes.class AND displacement > 35000 AND launched >= 1922 AND classes.type = 'bb'
