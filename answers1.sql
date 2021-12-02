-- 1) Crea una tabla llamada CURSO con los atributos:
-- a. Código de curso (clave primaria, entero no nulo);
-- b. Nombre (varchar no nulo);
-- c. Descripción (varchar);
-- d. Turno (varchar no nulo).
CREATE TABLE CURSO (
  codigo PRIMARY KEY NOT NULL, 
  nombre VARCHAR NOT NULL, 
  descripcion VARCHAR, 
  turno VARCHAR NOT NULL
);

-- 2) Agrega un campo “cupo” de tipo numérico.
ALTER TABLE curso ADD COLUMN cupo INTEGER;

-- 3) Inserta datos en la tabla:
-- a. (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
INSERT INTO curso VALUES(101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
-- b. (102, “Matemática Discreta”,””,”Tarde”,30)
INSERT INTO curso VALUES(102, "Matemática Discreta","","Tarde",30);

-- 4) Crea un registro con el nombre nulo y verifica que no funciona.
INSERT INTO curso VALUES(103, NULL,"Paradigmas de Programación","Tarde",25);

-- 5) Crea un registro con la clave primaria repetida y verifica que no funciona.
INSERT INTO curso VALUES(102, "Paradigmas","Paradigmas de Programación","Tarde",25);

-- 6) Actualiza, para todos los cursos, el cupo en 25.
UPDATE curso
set cupo = 25;

-- 7) Elimina el curso “Algoritmos”.
DELETE from curso
WHERE nombre = "Algoritmos";

--Just for verification
SELECT * from curso;