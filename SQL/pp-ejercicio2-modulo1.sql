 CREATE SCHEMA `tienda_zapatillas`;
USE `tienda_zapatillas`;
CREATE table Zapatillas (
id_zapatilla INT NOT NULL AUTO_INCREMENT primary key,
modelo VARCHAR(45) NOT NULL,
color varchar(45) NOT NULL
);

USE `tienda_zapatillas`;
CREATE table Clientes (
id_cliente INT NOT NULL auto_increment primary key, 
nombre VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL, 
direccion VARCHAR(45) NOT NULL, 
ciudad VARCHAR(45) NOT NULL, 
provincia VARCHAR(45) NOT NULL, 
pais VARCHAR(45) NOT NULL, 
codigo_postal VARCHAR(45) NOT NULL
);

USE `tienda_zapatillas`;
CREATE table Empleados (
id_empleado INT NOT NULL auto_increment primary key,
nombre varchar(45) NOT NULL,
tienda varchar(45) NOT NULL,
salario int default null,
fecha_incorporacion date NOT NULL
);

USE `tienda_zapatillas`;
create table facturas (
id_factura INT NOT NULL auto_increment primary key,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE not null,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
FOREIGN KEY(id_zapatilla) REFERENCES Zapatillas(id_zapatilla) ON UPDATE CASCADE,
FOREIGN KEY(id_empleado) REFERENCES Empleados(id_empleado) ON UPDATE CASCADE,
FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente) ON UPDATE CASCADE
);

USE `tienda_zapatillas`;
create table facturas (
id_factura INT NOT NULL auto_increment primary key,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE not null,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
FOREIGN KEY(id_zapatilla) REFERENCES Zapatillas(id_zapatilla) ON UPDATE CASCADE,
FOREIGN KEY(id_empleado) REFERENCES Empleados(id_empleado) ON UPDATE CASCADE,
FOREIGN KEY(id_cliente) REFERENCES Clientes(id_cliente) ON UPDATE CASCADE
);
