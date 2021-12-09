--- 09-12-2021 02:08:20
--- MariaDB
CREATE TABLE persona(
  id INTEGER NOT NULL,
  nombre VARCHAR(20) NOT NULL
);

--- 09-12-2021 02:08:51
--- MariaDB
insert into persona VALUES
(3, 'Ramirez, Luis'),
(1, 'Quiroga, Santiago'),
(4, 'García, María'),
(5, 'Montesori, Luciana'),
(2, 'Gómez, Luciano')
;

--- 09-12-2021 02:09:16
--- MariaDB
SELECT * FROM persona;

--- 09-12-2021 02:10:50
--- MariaDB
alter table persona add constraint pk_id primary key(id);

--- 09-12-2021 02:11:01
--- MariaDB
SELECT * FROM persona;

