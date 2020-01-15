/*http://www.sql-ex.ru/learn_exercises.php?LN=35*/
/*Find models in the Product table consisting either of digits only or Latin letters (A-Z, case insensitive) only.
Result set: model, type.*/

SELECT DISTINCT model, type
FROM product 
WHERE model NOT LIKE '%[^0-9]%' OR model NOT LIKE '%[^a-z]%'
