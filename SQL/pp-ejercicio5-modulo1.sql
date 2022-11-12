USE northwind;

SELECT employee_id, last_name, first_name
FROM employees;

#2. ver aquellos productos cuyos precios por unidad 0 - 5$
select product_name, unit_price
FROM products
WHERE unit_price <= 5;

#3. conocer los datos de los productos que tengan EXACTAMENTE el precio 
#de 18, 19, 20

select product_name, unit_price
FROM products
WHERE unit_price BETWEEN 18 AND 20;

#4. los productos que dan más beneficios (precio mayor o igual a 
#15 dolares pero menor o igual que 50 dolares)

select product_name, unit_price
FROM products
WHERE unit_price >= 15 AND unit_price <= 50;

#5. productos que no tienen precio
select product_id, product_name, unit_price
FROM products
WHERE unit_price IS NULL;
#hay 1 producto que no tiene ni id, ni nombre ni precio

#6. datos de aquellos productos con un precio < 15 con ID < 10
select product_id, product_name, unit_price
FROM products
WHERE unit_price < 15 AND product_id <=10;

#7. misma consulta 6 pero con NOT
select product_id, product_name, unit_price
FROM products
WHERE NOT unit_price < 15 AND NOT product_id <=10;

#8. paises que hacen pedidos
select ship_country
FROM orders;