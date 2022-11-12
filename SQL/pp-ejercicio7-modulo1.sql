use northwind;

#1. queremos ver los productos más baratos y caros de nuestra bbdd.

SELECT MIN(unit_price) AS "LowerPrice", MAX(unit_price) AS "HighestPrice"
FROM products;

#2. saber el n productos y el precio medio. le damos alias para facilitar la legibilidad
SELECT COUNT(product_id) AS "Número de productos", round(AVG(unit_price),2) AS "Media precios" 
FROM products;
#usamos el round para redondear a 2 decimales.

#3. tenemos que sacar la máxima y mínima carga (freight) de UK
SELECT MIN(freight) AS "Carga mínima", MAX(freight) AS "Carga máxima"
FROM orders
WHERE ship_country = "UK";

#4. todos los productos que se vendan por encima del precio. ordenar por precios de mayor a menor.

	/*4a. primero vamos a averiguar la media por la que se venden los productos.
    Usamos la función round para redondear con 2 decimales para facilitar su legibilidad*/
    

SELECT round(AVG(unit_price),2)
FROM products;
#el resultado da 28.87
	
    /*4b. Seleccionar todos los productos que están por encima de la media.*/

SELECT product_name, unit_price
FROM products
WHERE unit_price > 28.87
ORDER BY unit_price DESC;

#5. Consultar el número de los productos que ya no se venden

SELECT count(discontinued)
FROM products
WHERE discontinued = 1;

	/*No hay ningún producto que ya no se venda.*/

#6. Detalles de los productos de la query anterior, concretamente aquellos no discontinuados.

SELECT product_id, product_name, discontinued
FROM products
WHERE discontinued = 0;

	/*los limitamos a aquellos 10 con el ID más elevado, los más recientes*/

SELECT product_id, product_name, discontinued
FROM products
WHERE discontinued = 0
ORDER BY product_id DESC
LIMIT 10;