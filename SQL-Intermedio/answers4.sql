-- 1- Escriba una consulta que devuelva la cantidad de profesores
--    que dictan más de un curso en el turno Noche.
select count(*) 
FROM(
    SELECT p.nombbre, COUNT(*) 
    FROM profesor p inner JOIN curso c
    ON p.id = c.PROFESOR_id
    WHERE turno = 'Noche'
    GROUP BY p.nombbre
    HAVING COUNT(*) > 1
    ) nested_query
;

-- 2- Escriba una consulta para obtener la información de todos los estudiantes
--    que no realizan el curso con código 105.
SELECT *
FROM estudiante e
WHERE e.legajo NOT IN (
    SELECT i.ESTUDIANTE_legajo
    FROM inscripcion i
    WHERE i.CURSO_codigo = 105
);