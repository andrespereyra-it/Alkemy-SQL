CREATE TABLE CURSO (
  codigo PRIMARY KEY NOT NULL, 
  nombre VARCHAR NOT NULL, 
  descripcion VARCHAR, 
  turno VARCHAR NOT NULL
);

ALTER TABLE curso ADD COLUMN cupo INTEGER;

INSERT INTO curso VALUES(101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
INSERT INTO curso VALUES(102, "Matemática Discreta","","Tarde",30);
INSERT INTO curso VALUES(103, NULL,"Paradigmas de Programación","Tarde",25);
INSERT INTO curso VALUES(102, "Paradigmas","Paradigmas de Programación","Tarde",25);

UPDATE curso
set cupo = 25;

DELETE from curso
WHERE nombre = "Algoritmos";

--Just for verification
SELECT * from curso;