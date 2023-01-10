-- CRUD EN SQL Create Read Update Delete
create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales(
	 id int,
     tipo varchar(255),
     estado varchar(255),
     PRIMARY KEY (id)
);
ALTER TABLE animales MODIFY COLUMN id int auto_increment;

-- INSERT INTO animales (tipo, estado) VALUES('chanchito', 'feliz');
-- Para comentar se usa doble guión seguido
SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES('Dragón', 'feliz');
INSERT INTO animales (tipo, estado) VALUES('Felipe', 'feliz');
INSERT INTO animales (tipo, estado) VALUES('Pedro', 'triste');

-- SELECCIONAR ELEMENTOS DE UNA TABLA
SELECT * FROM animales; -- se selecciona todo sobre la tabla
SELECT * FROM animales WHERE id = 1; -- Se selecciona una tabla con una condición
SELECT * FROM animales WHERE estado = 'feliz'; -- Se selecciona una tabla con una condición
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'Chanchito'; -- Se selecciona una tabla con una condición y otra
SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'Pedro'; -- No hay registros con estas condiciones

-- ACTUALIZAR O MODIFICAR ELEMENTOS DE UNA TABLA
UPDATE animales SET estado = 'feliz' WHERE id = 5; #Quitarle el triste

SELECT * FROM animales; #Para verificar que sí se modificó la tabla

-- Borrar elementos de una base de datos

DELETE from animales WHERE estado = 'feliz'; -- Va a arrojar un error
-- Este es el error que nos da Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  
-- To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect. 
-- SQL se actualizó para evitar errors de DELETE cometidos por el where y necesitamos obligarotiamente  un id

DELETE from animales WHERE id = 3; -- Deja porque le indiqué el ID 
SELECT * FROM animales; #Para verificar que sí se borro el id

UPDATE animales SET estado = 'triste' WHERE tipo = 'Dragón'; # Va a devolver el mismo error ya que toca indicarle una ID
UPDATE animales SET estado = 'triste' WHERE id = 2;  #Ahora sí Deja

SELECT * FROM animales; 

