/*http://www.sql-ex.ru/learn_exercises.php?LN=7*/
/*Get the models and prices for all commercially available products (of any type) produced by maker B.*/

SELECT  product.model, pc.price 
FROM product INNER JOIN pc 
ON product.model = pc.model 
WHERE product.maker = 'B'

UNION

SELECT product.model, laptop.price 
FROM product INNER JOIN laptop 
ON product.model = laptop.model 
WHERE product.maker = 'B'

UNION 

SELECT product.model, printer.price 
FROM product INNER JOIN printer 
ON product.model = printer.model 
WHERE product.maker = 'B'
