-- 1- Nombre, apellido y fecha de nacimiento de todos los empleados, 
-- ordenado por fecha de nacimiento ascendente.
SELECT p.nombre, p.apellido, p.fecha_nacimiento 
from profesor p
ORDER BY p.fecha_nacimiento

-- 2- Todos los profesores cuyo salario sea mayor o igual a 65000.
SELECT * FROM profesor
WHERE salario >= 65000;

-- 3- Todos los profesores que nacieron en la década del 80.
SELECT * FROM profesor
WHERE fecha_nacimiento LIKE '198%';

-- 4- 5 registros
SELECT * FROM profesor
LIMIT 5;

-- 5- Todos los profesores cuyo apellido inicie con la letra “P”
SELECT * FROM profesor
WHERE apellido LIKE 'P%';

-- 6- Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
SELECT * FROM profesor
WHERE fecha_nacimiento LIKE '198%' AND salario > 80000;