--- 08-12-2021 15:34:25
--- SQLite
CREATE TABLE estudiante (
  legajo INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR not NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  carrera VARCHAR
);

--- 08-12-2021 15:34:36
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

--- 08-12-2021 15:34:41
--- SQLite
CREATE TABLE profesor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombbre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  salario INTEGER
);

--- 08-12-2021 15:34:47
--- SQLite
INSERT INTO profesor VALUES
	(1, 'Juan', 'Pérez', '1990-06-06', 55000),
    (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000)
;

--- 08-12-2021 15:34:52
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

--- 08-12-2021 15:35:01
--- SQLite
INSERT INTO curso VALUES(101, "Algoritmos", "Algoritmos y estructura de datos", 20,"Mañana", 1),
(102, "Matemática Discreta", NULL, 20, "Tarde", 2),
(103, "Programación Java", "POO en Java", 35, "Noche", 4),
(104, "Programación Web", NULL, 35, "Noche", 5),
(105, "Programación C#", ".NET, Visual Studio 2019", 30, "Noche", 6)
;

--- 08-12-2021 15:35:06
--- SQLite
CREATE TABLE inscripcion(
  numero INTEGER PRIMARY KEY NOT NULL,
  CURSO_codigo INTEGER,
  ESTUDIANTE_legajo INTEGER,
  FOREIGN KEY(CURSO_codigo) REFERENCES curso(codigo),
  FOREIGN KEY(ESTUDIANTE_legajo) REFERENCES estudiante(legajo)
);

--- 08-12-2021 15:37:01
--- SQLite
DROP TABLE inscripcion;

--- 08-12-2021 15:38:06
--- SQLite
CREATE TABLE inscripcion(
  numero INTEGER PRIMARY KEY NOT NULL,
  CURSO_codigo INTEGER,
  ESTUDIANTE_legajo INTEGER,
  fecha_hora DATE,
  FOREIGN KEY(CURSO_codigo) REFERENCES curso(codigo),
  FOREIGN KEY(ESTUDIANTE_legajo) REFERENCES estudiante(legajo)
);

--- 08-12-2021 15:38:12
--- SQLite
INSERT INTO inscripcion VALUES
(1, 101, 41248, '2012-05-02 18:45:00'),
(2, 102, 41259, '2012-04-02 18:45:00'),
(3, 102, 47961, '2012-01-02 20:01:00'),
(4, 103, 47961, '2012-04-28 18:45:00'),
(5, 101, 39685, '2012-04-12 18:45:00')
(6, 103, 36485, '2012-04-28 18:45:00'),
(7, 103, 43651, '2012-04-28 18:45:00'),
(8, 101, 47961, '2012-04-28 18:45:00'),
(11, 101, 43651, '2012-04-21 18:45:00'),
(13, 102, 47521, '2012-04-03 18:45:00'),
(14, 102, 51200, '2012-05-02 18:45:00')
;

--- 08-12-2021 16:55:32
--- SQLite
select * from profesor;

--- 08-12-2021 17:05:11
--- SQLite
--1) Nombre, apellido y cursos que realiza cada estudiante
select e.nombre, e.apellido, c.nombre
FROM estudiante e join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
JOIN curso c ON i.CURSO_codigo = c.codigo;

--- 08-12-2021 17:05:35
--- SQLite
select * from estudiante;

--- 08-12-2021 17:05:48
--- SQLite
SELECT * FROM inscripcion;

--- 08-12-2021 17:06:07
--- SQLite
select * from estudiante;

--- 08-12-2021 17:06:19
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
JOIN curso c ON i.CURSO_codigo = c.codigo;

--- 08-12-2021 17:07:23
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:07:50
--- SQLite
--1) Nombre, apellido y cursos que realiza cada estudiante
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
JOIN curso c ON i.CURSO_codigo = c.codigo;

--- 08-12-2021 17:07:54
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:08:27
--- SQLite
--1) Nombre, apellido y cursos que realiza cada estudiante
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo;

--- 08-12-2021 17:08:32
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:10:42
--- SQLite
select * from profesor;

--- 08-12-2021 17:10:54
--- SQLite
--3) Nombre, apellido y cursos que dicta cada profesor
select p.nombbre, p.apellido, c.nombre
FROM profesor p INNER join curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

--- 08-12-2021 17:11:41
--- SQLite
select p.nombbre, p.apellido, c.nombre
FROM profesor p INNER join curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

--- 08-12-2021 17:12:23
--- SQLite
select p.nombbre, p.apellido, c.nombre
FROM profesor p left outer join curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

--- 08-12-2021 17:14:02
--- SQLite
SELECT * from curso c;

--- 08-12-2021 17:14:47
--- SQLite
select e.nombre, e.apellido, c.nombre, c.cupo
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:16:05
--- SQLite
select * from curso;

--- 08-12-2021 17:18:40
--- SQLite
select count(*), c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
ORDER BY c.nombre;

--- 08-12-2021 17:19:16
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:19:26
--- SQLite
select * from estudiante;

--- 08-12-2021 17:20:14
--- SQLite
SELECT * FROM inscripcion;

--- 08-12-2021 17:26:51
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:27:15
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY e.apellido;

--- 08-12-2021 17:27:43
--- SQLite
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--- 08-12-2021 17:27:52
--- SQLite
-- Estudiantes por curso
select count(*), c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
ORDER BY c.nombre;

--- 08-12-2021 17:30:51
--- SQLite
-- Estudiantes por curso
select count(*) - c.cupo AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
ORDER BY c.nombre;

--- 08-12-2021 17:31:11
--- SQLite
-- Estudiantes por curso
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
ORDER BY c.nombre;

--- 08-12-2021 17:31:32
--- SQLite
select * from curso;

--- 08-12-2021 17:32:00
--- SQLite
-- Estudiantes por curso
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
ORDER BY c.nombre;

--- 08-12-2021 17:33:19
--- SQLite
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
HAVING (c.cupo - count(*)) < 17;

--- 08-12-2021 17:33:27
--- SQLite
-- Estudiantes por curso
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
HAVING (c.cupo - count(*)) <= 17;

--- 08-12-2021 17:33:34
--- SQLite
-- Estudiantes por curso
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
HAVING (c.cupo - count(*)) <=33;

