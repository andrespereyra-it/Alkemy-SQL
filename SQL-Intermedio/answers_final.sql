-- 1- Escriba una consulta que devuelva el legajo y 
--    la cantidad de cursos que realiza cada estudiante.
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
ORDER BY e.legajo, i.CURSO_codigo
;

-- 2- Escriba una consulta que devuelva el legajo y
--    la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) > 1
ORDER BY e.legajo, i.CURSO_codigo
;

-- 3- Escriba una consulta que devuelva la información de los estudiantes
--    que no realizan ningún curso.
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e LEFT OUTER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) = 0
ORDER BY e.legajo, i.CURSO_codigo
;

-- 4- Escriba para cada tabla, 
--    los index (incluyendo su tipo) que tiene cada una.

profesor
    clustered index:    id INTEGER
    nonclustered index: --

curso
    clustered index:    codigo INTEGER
    nonclustered index: PROFESOR_id INTEGER

inscripcion
    clustered index:    numero INTEGER
    nonclustered index: CURSO_codigo INTEGER
                        ESTUDIANTE_legajo INTEGER

estudiante
    clustered index:    legajo INTEGER
    nonclustered index: --

-- 5- Liste toda la información sobre los estudiantes que realizan cursos
--    con los profesores de apellido “Pérez” y “Paz”.
SELECT DISTINCT e.* 
FROM estudiante e 
    INNER JOIN inscripcion i ON e.legajo = i.ESTUDIANTE_legajo
    INNER JOIN curso c ON i.CURSO_codigo = c.codigo
    INNER JOIN profesor p ON c.PROFESOR_ID = p.id
WHERE p.apellido IN ('Pérez', 'Paz')
;