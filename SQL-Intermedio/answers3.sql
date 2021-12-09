-- 1-
-- a) Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE persona(
  id INTEGER NOT NULL,
  nombre VARCHAR(20) NOT NULL
);

-- b) Inserte datos siguiendo un orden no secuencial para el id.
insert into persona VALUES
(3, 'Ramirez, Luis'),
(1, 'Quiroga, Santiago'),
(4, 'García, María'),
(5, 'Montesori, Luciana'),
(2, 'Gómez, Luciano')
;

-- c) Consulte los datos para visualizar el orden de registros.
SELECT * FROM persona;

-- d) Agregue una clave primaria para el campo id.
alter table persona add constraint pk_id primary key(id);

-- e) Consulte los datos para visualizar el orden de registros.
SELECT * FROM persona;