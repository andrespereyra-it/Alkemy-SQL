-- 1- Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.

-- First I created the table estudiante
CREATE TABLE estudiante (
  legajo INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR not NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  carrera VARCHAR
);

--Then, added the data
INSERT into estudiante VALUES
	 (36485, 'Romina', 'Nieva', '1999-11-26','Mecánica'),
     (39685, 'Brenda', 'Medrano', '2000-09-25', 'Sistemas'),
     (41258, 'Ramiro', 'Ríos', '1994-12-06', 'Sistemas'),
     (43651, 'Cristian', 'Gómez', '1995-03-19', 'Mecánica'),
     (47521, 'María', 'Velazquez', '1998-01-02', 'Sistemas'),
     (47961, 'Alexis', 'Reinoso', '1994-12-17', 'Sistemas'),
     (48952, 'Gabriel', 'Morales', '1996-10-01', 'Sistemas'),
     (51200, 'Lourdes', 'Martínez', '2001-12-13', 'Sistemas');

--This is the answer
SELECT carrera, COUNT(*) 
FROM estudiante
GROUP BY carrera
HAVING carrera = 'Mecánica';

-- 2. Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.

--Created a table for profesor
CREATE TABLE profesor (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombbre VARCHAR NOT NULL,
  apellido VARCHAR NOT NULL,
  fecha_nacimiento DATE,
  salario INTEGER
);

--Added values in profesor table
INSERT INTO profesor VALUES
	(1, 'Juan', 'Pérez', '1990-06-06', 55000),
    (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
    (3, 'Martín', 'Correa', '1987-12-07', 63000),
    (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
    (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
    (6, 'Mabel', 'Ríos', '1982-06-12', 83000)
;

--This is the answer
select MIN(salario) FROM profesor
WHERE fecha_nacimiento >= '1980-%' and fecha_nacimiento < '1990-%';

-- 4- Escriba las siguientes consultas:

----Cantidad de pasajeros por país
SELECT pais.nombre, COUNT(*)
FROM pais JOIN pasajero 
ON pais.idpais = pasajero.idpais
GROUP BY pais.nombre;

----Suma de todos los pagos realizados
SELECT SUM(monto) 
FROM pago;

----Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
SELECT pasajero.nombre, ROUND(SUM(pago.monto), 2)
FROM pasajero JOIN pago 
ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.nombre;

----Promedio de los pagos que realizó un pasajero.
SELECT pasajero.nombre, AVG(pago.monto)
FROM pasajero JOIN pago 
ON pasajero.idpasajero = pago.idpasajero
GROUP BY pasajero.nombre;
