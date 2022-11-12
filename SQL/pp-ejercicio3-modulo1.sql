#tenemos que incluir marca y talla
alter table zapatillas
ADD Column marca varchar(45),
ADD column talla INT NOT NULL;

alter table empleados
modify column salario FLOAT;

alter table clientes
drop column pais,
modify column codigo_postal INT(5);

alter table Facturas
ADD column total float;
