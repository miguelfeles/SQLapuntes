USE holamundo;
CREATE TABLE products(
	id int not null auto_increment,
    name varchar(50) not null,
    created_by int not null,
    marca varchar(50) not null,
    PRIMARY KEY(id),
    FOREIGN KEY(created_by) references user(id) -- a cuál tabla hace referencia en este caso a la tabla user y la columna
);


RENAME TABLE products to product;

INSERT INTO product(name, created_by, marca)
values 
	('ipad', 1, 'apple'),
    ('iphone',1,'apple'),
    ('watch',2,'apple'),
    ('macbook',1,'apple'),
    ('imac',3,'apple'),
    ('ipad mini',2,'apple');
    
SELECT u.id, u.email, p.name FROM user u LEFT JOIN product p ON u.id = p.created_by; -- LEFT JOIN
--    {Columnas a mostrar}             {alias}     {p se une a tabla u}  las columnas que cumplan esta condición Principal el user y lo de la izquierda
    
SELECT u.id, u.email, p.name FROM user u RIGHT JOIN product p ON u.id = p.created_by; -- RIGHT JOIN
--    {Columnas a mostrar}             {alias}     {u se une a tabla p}  las columnas que cumplan esta condición Principal el user y lo de la derecha

SELECT u.id, u.email, p.name FROM user u INNER JOIN product p ON u.id = p.created_by; -- INNER JOIN
-- Muestra los del centro todos los productos están asocioados con un usuario

SELECT u.id, u.email, p.id, p.name FROM user u CROSS JOIN product p; -- CROSS JOIN
-- Producto cartesiano o cruzado entre varias tablas 

SELECT count(id), marca FROM product group by marca; -- agrupa por cosas en común

SELECT count(p.id), u.name FROM product p LEFT JOIN user u ON u.id = p.created_by GROUP BY created_by; #Para agrupar de acuerdo al name

SELECT count(p.id), u.name FROM product p LEFT JOIN user u ON u.id = p.created_by GROUP BY created_by
having count(p.id) >= 2; --  para excluir ciertas agrupaciones

DROP TABLE product; #Eliminar una tabla