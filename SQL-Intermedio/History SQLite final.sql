--- 09-12-2021 16:35:25
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo;

--- 09-12-2021 16:35:26
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo;

--- 09-12-2021 16:35:50
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
ORDER BY e.legajo
;

--- 09-12-2021 16:36:03
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:36:16
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
ORDER BY e.legajo, i.CURSO_codigo ASC;

--- 09-12-2021 16:36:22
--- SQLite
SELECT e.legajo, i.CURSO_codigo
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
ORDER BY e.legajo ASC, i.CURSO_codigo ASC
;

--- 09-12-2021 16:38:01
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:38:17
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:39:20
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) > 1
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:40:24
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e LEFT OUTER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:41:11
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e LEFT OUTER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) = 0
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:41:27
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e INNER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) = 0
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:41:37
--- SQLite
SELECT e.legajo, COUNT(i.CURSO_codigo)
FROM estudiante e LEFT OUTER JOIN inscripcion i
ON e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo
HAVING COUNT(i.CURSO_codigo) = 0
ORDER BY e.legajo, i.CURSO_codigo
;

--- 09-12-2021 16:42:58
--- SQLite
SELECT *
FROM estudiante;

--- 09-12-2021 16:50:27
--- SQLite
SELECT * FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id;

--- 09-12-2021 16:51:10
--- SQLite
SELECT e.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id;

--- 09-12-2021 16:57:35
--- SQLite
SELECT e.*, i.*, c.*, p.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id;

--- 09-12-2021 17:01:19
--- SQLite
SELECT e.*, i.*, c.*, p.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id
WHERE p.apellido in ('Perez', 'Paz')
;

--- 09-12-2021 17:01:35
--- SQLite
SELECT e.*, i.*, c.*, p.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id
WHERE p.apellido in ('Pérez', 'Paz')
;

--- 09-12-2021 17:02:31
--- SQLite
SELECT e.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id
WHERE p.apellido in ('Pérez', 'Paz')
;

--- 09-12-2021 17:10:13
--- SQLite
SELECT  DISTINCT e.* FROM estudiante e 
inner JOIN inscripcion i on e.legajo = i.ESTUDIANTE_legajo
INNER JOIN curso c ON i.CURSO_codigo = c.codigo
INNER JOIN profesor p ON c.PROFESOR_ID = p.id
WHERE p.apellido in ('Pérez', 'Paz');

