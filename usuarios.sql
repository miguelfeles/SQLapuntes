USE holamundo;

CREATE TABLE user(
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) VALUES ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) VALUES ('Layla', 15, 'laylqa@gmail,com');
INSERT INTO user (name, edad, email) VALUES ('Nicolás', 37, 'nico@gmail,com');
INSERT INTO user (name, edad, email) VALUES ('Chanchito', 7, 'chanchito@gmail,com'); 


SELECT * FROM user; -- Selecciona todos de la tabla
SELECT * FROM user limit 1; -- Lee todos pero me muestra solo 1 que es el limite
SELECT * FROM user WHERE edad > 15; -- Selecciona los que cumplen la condición
SELECT * FROM user WHERE edad >= 15; -- Selecciona los que cumplen la condición que sea mayor o igual
SELECT * FROM user WHERE edad > 20 and email = 'nico@gmail.com'; -- Selecciona aquellos que cumplan la doble condición
SELECT * FROM user WHERE edad > 20 or email = 'laylqa@gmail.com'; -- Selecciona los que cumplen uno o el otro
SELECT * FROM user WHERE email != 'laylqa@gmail.com' ; -- Devolvera los registros que no sean iguales a ese email

SELECT * FROM user WHERE edad between 15 and 30; -- Selecciona los que estén entre dos condiciones numericas como la edad
SELECT * FROM user WHERE email like '%gmail%'; #Seleccionea si la cadena entre porcentajes está en cualquier lugar de la fila
-- Los porcentajes indican que puede iniciar y terminar en cualquier lado
SELECT * FROM user WHERE email like '%gmail'; -- no devuelve nada porque debe terminar
SELECT * FROM user WHERE email like 'oscar%'; -- Que contenga en algún lugar el nombre de Oscar

SELECT * FROM user order by edad asc; -- Los organiza de forma ascendente por edad
SELECT * FROM user order by edad desc; -- Los organiza de forma descendente por edad

SELECT max(edad) as mayor from user; -- Busca la edad mayor el as es el nombre que va a tener la busqueda
SELECT min(edad) as menor from user; -- Busca la edad menor

-- SELECCIONAR COLUMNA
SELECT id, name FROM user; -- Así se seleccionan dos columnas 
SELECT id, name as nombre FROM user; -- con name as se cambian más valores de columna

