--- 07-12-2021 00:22:47
--- SQLite
CREATE TABLE estudiante (
  legajo INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR not NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  carrera VARCHAR
);

--- 07-12-2021 00:31:43
--- SQLite
INSERT into estudiante VALUES
	 (36485, 'Romina', 'Nieva', '1999-11-26','Mecánica'),
     (39685, 'Brenda', 'Medrano', '2000-09-25', 'Sistemas'),
     (41258, 'Ramiro', 'Ríos', '1994-12-06', 'Sistemas'),
     (43651, 'Cristian', 'Gómez', '1995-03-19', 'Mecánica'),
     (47521, 'María', 'Velazquez', '1998-01-02', 'Sistemas'),
     (47961, 'Alexis', 'Reinoso', '1994-12-17', 'Sistemas'),
     (48952, 'Gabriel', 'Morales', '1996-10-01', 'Sistemas'),
     (51200, 'Lourdes', 'Martínez', '2001-12-13', 'Sistemas');

--- 07-12-2021 00:32:13
--- SQLite
SELECT * FROM estudiante;

--- 07-12-2021 00:32:30
--- SQLite
SELECT COUNT(*) FROM estudiante;

--- 07-12-2021 00:34:11
--- SQLite
SELECT * FROM estudiante;

--- 07-12-2021 00:35:30
--- SQLite
SELECT carrera, COUNT(*) 
FROM estudiante
GROUP BY carrera;

--- 07-12-2021 00:36:07
--- SQLite
SELECT carrera, COUNT(*) 
FROM estudiante
GROUP BY carrera
HAVING carrera = 'Mecánica';

--- 07-12-2021 00:43:14
--- SQLite
CREATE TABLE profesor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombbre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  salario INTEGER
);

--- 07-12-2021 00:49:22
--- SQLite
INSERT INTO profesor VALUES
	(1, 'Juan', 'Pérez', '1990-06-06', 55000),
    (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000)
;

--- 07-12-2021 00:52:15
--- SQLite
select MIN(salario) FROM profesor
WHERE fecha_nacimiento >= '1980-%' and fecha_nacimiento <= '1990-%';

--- 07-12-2021 00:53:21
--- SQLite
select MIN(salario) FROM profesor
WHERE fecha_nacimiento >= '1980-%' and fecha_nacimiento < '1990-%';

INSERT into estudiante VALUES
	 (36485, 'Romina', 'Nieva', '1999-11-26','Mecánica'),
     (39685, 'Brenda', 'Medrano', '2000-09-25', 'Sistemas'),
     (41258, 'Ramiro', 'Ríos', '1994-12-06', 'Sistemas'),
     (43651, 'Cristian', 'Gómez', '1995-03-19', 'Mecánica'),
     (47521, 'María', 'Velazquez', '1998-01-02', 'Sistemas'),
     (47961, 'Alexis', 'Reinoso', '1994-12-17', 'Sistemas'),
     (48952, 'Gabriel', 'Morales', '1996-10-01', 'Sistemas'),
     (51200, 'Lourdes', 'Martínez', '2001-12-13', 'Sistemas');
     
SELECT * FROM estudiante;

SELECT carrera, COUNT(*) 
FROM estudiante
GROUP BY carrera
HAVING carrera = 'Mecánica';

CREATE TABLE profesor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombbre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  salario INTEGER
);

INSERT INTO profesor VALUES
	(1, 'Juan', 'Pérez', '1990-06-06', 55000),
    (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000)
;

select MIN(salario) FROM profesor
WHERE fecha_nacimiento >= '1980-%' and fecha_nacimiento < '1990-%';