USE tienda_zapatillas;
CREATE TABLE zapatillas (
id_zapatillas INT NOT NULL auto_increment Primary key,
modelo varchar(45),
color varchar(45),
marca varchar(45),
talla INT 
);

INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42),
(2, 'UOPMN', 'Rosas', 'Nike', 39),
(3, 'OPNYT', 'Verdes', 'Adidas', '35');

ALTER TABLE Empleados
modify column salario INT;

insert into Empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (1, 'Laura', 'Alcobendas', 25987, '2010/09/03');

insert into Empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (2, 'Maria', 'Sevilla', null, '2001/04/11'),(3, 'Ester', 'Oviedo', 30165.98, '2000/11/29');

INSERT INTO Clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia,pais, codigo_postal)
VALUES (1, 'Monica', 1234,'monica@email.com','Calle Felicidad', 'Móstoles','Madrid', '',28176),
(2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona','', 12346),
(3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra','', 23456);
/* Nos hemos dado cuenta de que pais era una variable obligatoria que no habian rellenado ninguna de las clientes.
Entonces,otra opcion seria modificar la variable pais para que no fuera obligatoria y nos no diera error el valor
nulo. 

ALTER TABLE Clientes
modify column pais varchar(45); */


ALTER TABLE facturas
ADD column totales FLOAT;

INSERT INTO facturas (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, totales)
VALUES (1, 123, '2001/11/12', 1, 2, 1, 54.98),
(2, 1234, '2005/05/23', 11, 3, 89,91), (3, 12345, '2015/09/18', 2, 3, 3, 76.23);

UPDATE zapatillas
SET color = 'Amarillas' 
WHERE color = 'Rosas';

UPDATE Empleados
SET tienda = 'A Coruña'
where tienda = 'Alcobendas';
/* Este reemplazo hay distinta maneras de hacerlo:
 1. WHERE nombre = 'Laura'
 2. WHERE id_empleado = 1 ya que es el ID de Laura.
 Esta es la opcion que aplicariamos si se tratara de una base de datos muchos mas grande o hubiera mas casos donde
 tienda = 'Alcobendas'*/
 
UPDATE Clientes
SET numero_telefono = 123456728
WHERE id_cliente = 1;  
 
UPDATE facturas
SET totales = 89.91
WHERE id_zapatilla = 2;
 







