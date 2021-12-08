--1) Nombre, apellido y cursos que realiza cada estudiante
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER JOIN inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo;

--2) Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
select e.nombre, e.apellido, c.nombre
FROM estudiante e INNER JOIN inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
ORDER BY c.nombre;

--3) Nombre, apellido y cursos que dicta cada profesor
select p.nombre, p.apellido, c.nombre
FROM profesor p INNER join curso c ON p.id = c.PROFESOR_id;

--4) Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
select p.nombre, p.apellido, c.nombre
FROM profesor p INNER join curso c ON p.id = c.PROFESOR_id
ORDER BY c.nombre;

--5) Cupo disponible para cada curso (si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre;

--6) Cursos cuyo cupo disponible sea menor que 10
select c.cupo - count(*) AS Disponible, c.nombre
FROM estudiante e INNER join inscripcion i ON i.ESTUDIANTE_legajo = e.legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
GROUP BY c.nombre
HAVING (c.cupo - count(*)) < 10;