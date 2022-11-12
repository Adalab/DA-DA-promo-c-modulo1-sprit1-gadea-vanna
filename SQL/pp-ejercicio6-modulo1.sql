USE northwind;

/* De los primeros 10 productos, nos piden su id, su nombre y el precio*/

SELECT product_id, product_name, unit_price
FROM products
LIMIT 10;

/* Misma consulta, ordenar por orden descendente*/

SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

/* Queremos averiguar cual son los pedidos distintos que hemos tenido y eliminar aquellos con ID duplicadas*/

SELECT distinct order_id 
FROM order_details;

/* Como el número de pedidos es demasiado alto para visualizarlo de manera 
práctica en la consulta anterior, vamos a limitar los resultados sólo a los 2 primeros 
pedidos para verlos más en detalle. Sin embargo, en la tabla OrderDetails pueden existir varios 
registros para cada pedido, por lo que no nos servirá con un uso normal del comando LIMIT.*/

SELECT distinct order_id
FROM order_details
ORDER BY order_id ASC
LIMIT 2;
# ERROR (sales 2 ID iguales

/* Los tres pedidos que han supuesto el mayor coste económico para la empresa.
Calcularlo y darle el alias ImporteTotal*/

SELECT order_id, product_id, unit_price, quantity,unit_price * quantity AS "ImporteTotal"
FROM order_details
ORDER BY unit_price * quantity DESC
LIMIT 3;

/*6 - Los pedidos que están entre las posiciones 5 y 10 de nuestro ranking:
Ahora, no sabemos bien por qué razón, desde el departamento de Ventas nos
 piden seleccionar el ID de los pedidos situados entre la 5 y la 10 mejor 
 posición en cuanto al coste económico total ImporteTotal.*/

SELECT order_id, product_id,unit_price * quantity AS "ImporteTotal"
FROM order_details
ORDER BY unit_price * quantity DESC 
LIMIT 10
OFFSET 5;


/* 7 */

SELECT category_id, category_name AS `NombreDeCategoria`
FROM categories

#8 nos piden conocer cuál sería la fecha de envío (ShippedDate) de los pedidos almacenados en la base de datos, 
#si estos sufrieran un retraso de 5 días. Nos piden mostrar la nueva fecha renombrada como FechaRetrasada.
 
SELECT shipped_date DATE_ADD(day, 5, shipped_date) AS FechaRetrasada
FROM orders;

#9 

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price BETWEEN 15 AND 50;

#10

SELECT product_id, product_name, unit_price
FROM products
WHERE unit_price IN (18,19,20);





