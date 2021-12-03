--- 02-12-2021 18:06:07
--- SQLite
CREATE TABLE CURSO (codigo PRIMARY KEY NOT NULL, nombre VARCHAR NOT NULL, descripcion VARCHAR, turno VARCHAR NOT NULL);

SELECT * from curso;
*****/

--- 02-12-2021 18:09:45
--- SQLite
SELECT * from curso;

--- 02-12-2021 18:09:49
--- SQLite
SELECT * from curso;

--- 02-12-2021 18:17:27
--- SQLite
ALTER TABLE curso ADD COLUMN cupo INTEGER;

--- 02-12-2021 18:19:16
--- SQLite
INSERT INTO curso VALUES(101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);

--- 02-12-2021 18:19:22
--- SQLite
SELECT * from curso;

--- 02-12-2021 18:20:14
--- SQLite
INSERT INTO curso VALUES(102, "Matemática Discreta","","Tarde",30);

--- 02-12-2021 18:20:21
--- SQLite
SELECT * from curso;

--- 02-12-2021 19:53:00
--- SQLite
UPDATE curso
set cupo = 25;

--- 02-12-2021 19:53:06
--- SQLite
SELECT * from curso;

--- 02-12-2021 19:54:22
--- SQLite
DELETE from curso
WHERE nombre = "Algoritmos";

--- 02-12-2021 19:54:31
--- SQLite
SELECT * from curso;

--- 02-12-2021 22:01:09
--- SQLite.1
CREATE TABLE profesor(
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
  nombre VARCHAR(45) NOT NULL, 
  apellido VARCHAR(45) NOT NULL, 
  fecha_nacimiento DATE NOT NULL,
  salario FLOAT NOT NULL
);

--- 02-12-2021 22:01:27
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 22:04:08
--- SQLite.1
INSERT into profesor VALUES(1, "Juan", "Pérez", "1990-06-06", 55000);

--- 02-12-2021 22:04:12
--- SQLite.1
SELECT * FROM profesor;

INSERT into profesor VALUES(2, "María Emilia", "Paz", "1984-07-15", 72000);

SELECT * FROM profesor;
*****/

--- 02-12-2021 22:05:16
--- SQLite.1
INSERT into profesor VALUES(2, "María Emilia", "Paz", "1984-07-15", 72000);

--- 02-12-2021 22:05:19
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 22:06:09
--- SQLite.1
INSERT into profesor VALUES(3, "Martín", "Correa", "1987-12-07", 63000);

--- 02-12-2021 22:06:59
--- SQLite.1
INSERT into profesor VALUES(4, "Lucía", "Díaz", "1991-02-24", 45000);

--- 02-12-2021 22:07:52
--- SQLite.1
INSERT into profesor VALUES(5, "Raúl", "Martínez", "1980-10-15", 85000);

INSERT into profesor VALUES(6, "Mabel", "Ríos", "1982-06-12", 83000);

SELECT * FROM profesor;
*****/

--- 02-12-2021 22:08:40
--- SQLite.1
INSERT into profesor VALUES(6, "Mabel", "Ríos", "1982-06-12", 83000);

--- 02-12-2021 22:08:44
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 22:10:48
--- SQLite.1
SELECT * FROM CURSO;

--- 02-12-2021 22:11:13
--- SQLite.1
DROP TABLE curso;

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

INSERT into profesor VALUES(6, "Mabel", "Ríos", "1982-06-12", 83000);
INSERT INTO curso VALUES(101, "Algoritmos", "Algoritmos y estructura de datos", "Mañana", 1)

DROP TABLE curso;
SELECT * FROM CURSO;
*****/

--- 02-12-2021 22:29:34
--- SQLite.1
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

--- 02-12-2021 22:29:54
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 22:30:00
--- SQLite.1
SELECT * FROM CURSO;

--- 02-12-2021 22:31:08
--- SQLite.1
INSERT INTO curso VALUES(101, "Algoritmos", "Algoritmos y estructura de datos", 20, "Mañana", 1);

--- 02-12-2021 22:31:12
--- SQLite.1
SELECT * FROM CURSO;

--- 02-12-2021 22:34:36
--- SQLite.1
INSERT INTO curso VALUES(102, "Matemática Discreta", "", 20, "Tarde", 2);

--- 02-12-2021 22:34:55
--- SQLite.1
INSERT INTO curso VALUES(103, "Programación Java", "POO en Java", 35, "Noche", 4);

--- 02-12-2021 22:35:14
--- SQLite.1
INSERT INTO curso VALUES(104, "Programación Web", "", 35, "Noche", 5);

--- 02-12-2021 22:35:35
--- SQLite.1
INSERT INTO curso VALUES(105, "Programación C#", ".NET, Visual Studio 2019", 30, "Noche", 6);

--- 02-12-2021 22:35:37
--- SQLite.1
SELECT * FROM CURSO;

--- 02-12-2021 22:36:02
--- SQLite.1
SELECT profesor.Apellido , curso.Nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;

--- 02-12-2021 23:04:45
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 23:07:06
--- SQLite.1
SELECT p.nombre, p.apellido, p.fecha_nacimiento 
from profesor p
ORDER BY p.fecha_nacimiento;

--- 02-12-2021 23:08:17
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 23:08:38
--- SQLite.1
SELECT * FROM profesor
LIMIT 5;

--- 02-12-2021 23:09:13
--- SQLite.1
SELECT * FROM profesor
WHERE salario >= 65000;

--- 02-12-2021 23:09:18
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 23:09:26
--- SQLite.1
SELECT * FROM profesor
WHERE salario >= 65000;

--- 02-12-2021 23:09:49
--- SQLite.1
SELECT * FROM profesor;

--- 02-12-2021 23:10:41
--- SQLite.1
SELECT * FROM profesor
WHERE fecha_nacimiento LIKE '198%';

--- 02-12-2021 23:11:46
--- SQLite.1
SELECT * FROM profesor
WHERE apellido LIKE 'P%';

--- 02-12-2021 23:12:47
--- SQLite.1
SELECT * FROM profesor
WHERE fecha_nacimiento LIKE '198%' AND salario > 80000;

