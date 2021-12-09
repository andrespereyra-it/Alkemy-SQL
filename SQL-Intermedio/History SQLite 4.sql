--- 09-12-2021 15:29:06
--- SQLite
CREATE TABLE estudiante (
  legajo INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR not NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  carrera VARCHAR
);

--- 09-12-2021 15:29:10
--- SQLite
INSERT into estudiante VALUES
	 (36485, 'Romina', 'Nieva', '1999-11-26','Mecánica'),
     (39685, 'Brenda', 'Medrano', '2000-09-25', 'Sistemas'),
     (41258, 'Ramiro', 'Ríos', '1994-12-06', 'Sistemas'),
     (43651, 'Cristian', 'Gómez', '1995-03-19', 'Mecánica'),
     (47521, 'María', 'Velazquez', '1998-01-02', 'Sistemas'),
     (47961, 'Alexis', 'Reinoso', '1994-12-17', 'Sistemas'),
     (48952, 'Gabriel', 'Morales', '1996-10-01', 'Sistemas'),
     (51200, 'Lourdes', 'Martínez', '2001-12-13', 'Sistemas')
;

--- 09-12-2021 15:29:15
--- SQLite
CREATE TABLE profesor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombbre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  salario INTEGER
);

--- 09-12-2021 15:29:20
--- SQLite
INSERT INTO profesor VALUES
	(1, 'Juan', 'Pérez', '1990-06-06', 55000),
    (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000)
;

--- 09-12-2021 15:29:24
--- SQLite
CREATE TABLE curso(
  codigo INT NOT NULL, 
  nombre VARCHAR(45) NOT NULL, 
  descripcion VARCHAR(45),
  cupo INT NOT NULL DEFAULT 20,
  turno VARCHAR(45) NOT NULL,
  PROFESOR_id INT NOT NULL,
  PRIMARY KEY(codigo),
  FOREIGN KEY(PROFESOR_id) REFERENCES profesor(id)
);

--- 09-12-2021 15:29:29
--- SQLite
INSERT INTO curso VALUES(101, "Algoritmos", "Algoritmos y estructura de datos", 20,"Mañana", 1),
(102, "Matemática Discreta", NULL, 20, "Tarde", 2),
(103, "Programación Java", "POO en Java", 35, "Noche", 4),
(104, "Programación Web", NULL, 35, "Noche", 5),
(105, "Programación C#", ".NET, Visual Studio 2019", 30, "Noche", 6)
;

--- 09-12-2021 15:29:50
--- SQLite
CREATE TABLE inscripcion(
  numero INTEGER PRIMARY KEY NOT NULL,
  CURSO_codigo INTEGER,
  ESTUDIANTE_legajo INTEGER,
  fecha_hora DATE,
  FOREIGN KEY(CURSO_codigo) REFERENCES curso(codigo),
  FOREIGN KEY(ESTUDIANTE_legajo) REFERENCES estudiante(legajo)
);

--- 09-12-2021 15:30:09
--- SQLite
INSERT INTO inscripcion VALUES
(1, 101, 41248, '2012-05-02 18:45:00'),
(2, 102, 41259, '2012-04-02 18:45:00'),
(3, 102, 47961, '2012-01-02 20:01:00'),
(4, 103, 47961, '2012-04-28 18:45:00'),
(5, 101, 39685, '2012-04-12 18:45:00'),
(6, 103, 36485, '2012-04-28 18:45:00'),
(7, 103, 43651, '2012-04-28 18:45:00'),
(8, 101, 47961, '2012-04-28 18:45:00'),
(11, 101, 43651, '2012-04-21 18:45:00'),
(13, 102, 47521, '2012-04-03 18:45:00'),
(14, 102, 51200, '2012-05-02 18:45:00')
;

--- 09-12-2021 15:47:14
--- SQLite
SELECT COUNT(*) from profesor;

--- 09-12-2021 15:47:33
--- SQLite
SELECT * from profesor;

--- 09-12-2021 15:50:12
--- SQLite
SELECT * 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:51:02
--- SQLite
select * from profesor;

--- 09-12-2021 15:51:04
--- SQLite
SELECT * FROM curso;

--- 09-12-2021 15:51:12
--- SQLite
SELECT * 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:51:50
--- SQLite
SELECT COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:51:58
--- SQLite
SELECT * FROM curso;

--- 09-12-2021 15:52:09
--- SQLite
SELECT * 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:53:07
--- SQLite
select COUNT(*) from profesor;

--- 09-12-2021 15:53:14
--- SQLite
SELECT COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:54:11
--- SQLite
SELECT *
--COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id;

--- 09-12-2021 15:54:26
--- SQLite
SELECT *
--COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
;

--- 09-12-2021 16:02:46
--- SQLite
SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
;

--- 09-12-2021 16:03:28
--- SQLite
SELECT *
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche';

--- 09-12-2021 16:04:04
--- SQLite
SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) >1
;

--- 09-12-2021 16:04:11
--- SQLite
SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) > 0
;

--- 09-12-2021 16:07:10
--- SQLite
select * FROM(
SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) > 0) nested_query;

--- 09-12-2021 16:07:40
--- SQLite
select count(*) 
FROM(SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) > 0) nested_query;

--- 09-12-2021 16:09:10
--- SQLite
select count(*) 
FROM(SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) > 1) nested_query;

--- 09-12-2021 16:09:17
--- SQLite
select count(*) 
FROM(SELECT p.nombbre, COUNT(*) 
from profesor p inner JOIN curso c
ON p.id = c.PROFESOR_id
where turno = 'Noche'
GROUP BY p.nombbre
HAVING COUNT(*) > 0) nested_query;

--- 09-12-2021 16:12:47
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 105
);

--- 09-12-2021 16:13:36
--- SQLite
SELECT * FROM inscripcion;

--- 09-12-2021 16:13:51
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 101
);

--- 09-12-2021 16:13:59
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 103
);

--- 09-12-2021 16:14:04
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 102
);

--- 09-12-2021 16:14:11
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 109
);

--- 09-12-2021 16:14:23
--- SQLite
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (SELECT i.ESTUDIANTE_legajo
FROM inscripcion i
WHERE i.CURSO_codigo = 105
);

