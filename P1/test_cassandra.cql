USE universidad;

-- Crear una tabla
CREATE TABLE estudiante (
  id int PRIMARY KEY,
  nombre text,
  edad int
);

-- Insertar datos
INSERT INTO estudiante (id, nombre, edad) VALUES (1, 'Antoine', 21);
INSERT INTO estudiante (id, nombre, edad) VALUES (2, 'Victor', 21);

-- Consultar datos
SELECT * FROM estudiante;
