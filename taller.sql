taller1

-- este est opocional Eliminar la tabla si ya existe para empezar desde cero
DROP TABLE IF EXISTS estudiantes;

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10)
);

--  agregando gatos


INSERT INTO estudiantes VALUES (1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10');
INSERT INTO estudiantes VALUES (2, 'Maria', 'Gomez', 22, 'Base de Datos', '2026-02-15');
INSERT INTO estudiantes VALUES (3, 'Carlos', 'Lopez', 17, 'Diseño Web', '2026-01-20');
INSERT INTO estudiantes VALUES (4, 'Ana', 'Torres', 19, 'Programacion', '2026-03-05');
INSERT INTO estudiantes VALUES (5, 'Luis', 'Ramirez', 25, 'Base de Datos', '2026-02-28');
INSERT INTO estudiantes VALUES (6, 'Sofia', 'Castro', 21, 'Redes', '2026-03-15');
INSERT INTO estudiantes VALUES (7, 'Mateo', 'Morales', 18, 'Programacion', '2026-04-02');
INSERT INTO estudiantes VALUES (8, 'Lucia', 'Ortiz', 23, 'Base de Datos', '2026-04-10');
INSERT INTO estudiantes VALUES (9, 'Diego', 'Silva', 26, 'Diseño Web', '2026-01-05');
INSERT INTO estudiantes VALUES (10, 'Valentina', 'Rojas', 19, 'Redes', '2026-02-10');
INSERT INTO estudiantes VALUES (11, 'Andres', 'Mendoza', 20, 'Programacion', '2026-03-20');
INSERT INTO estudiantes VALUES (12, 'Camila', 'Jimenez', 24, 'Base de Datos', '2026-05-01');
INSERT INTO estudiantes VALUES (13, 'Gabriel', 'Navarro', 22, 'Diseño Web', '2026-01-30');
INSERT INTO estudiantes VALUES (14, 'Valeria', 'Ruiz', 17, 'Redes', '2026-04-25');
INSERT INTO estudiantes VALUES (15, 'Daniel', 'Acosta', 21, 'Programacion', '2026-03-15');

-- Consultas SELECT 

-- Mostrar todos los registros
SELECT * FROM estudiantes;

-- Mostrar únicamente nombres y curso
SELECT nombres, curso FROM estudiantes;

-- Mostrar estudiantes mayores de 18 años
SELECT * FROM estudiantes WHERE edad > 18;

-- Mostrar estudiantes entre 18 y 25 años
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

-- Mostrar estudiantes del curso “Base de Datos”
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

--  Mostrar estudiantes registrados después de 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

-- mostrar estudiantes registrados entre 2026-01-01 y el 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';



-- los cambios 


-- Cambiar curso
UPDATE estudiantes 
SET curso = 'Inteligencia Artificial' 
WHERE id_estudiante = 1;

-- Cambiar edad
UPDATE estudiantes 
SET edad = 18 
WHERE id_estudiante = 3;

--  Cambiar fecha de registro
UPDATE estudiantes 
SET fecha_registro = '2026-01-12' 
WHERE id_estudiante = 9;

-- Cambiar varios campos al mismo tiempo (curso y edad)
UPDATE estudiantes 
SET curso = 'Ciberseguridad', edad = 23 
WHERE id_estudiante = 6;

-- Cambiar curso basado en el nombre
UPDATE estudiantes 
SET curso = 'Programacion Avanzada' 
WHERE nombres = 'Maria';


-- delete = borrar 

-- Eliminar por ID
DELETE FROM estudiantes 
WHERE id_estudiante = 14;

-- Eliminar por curso
DELETE FROM estudiantes 
WHERE curso = 'Redes';

-- eliminar por edad de menore a 18
DELETE FROM estudiantes 
WHERE edad < 18;

-- eliminar por fecha exacta
DELETE FROM estudiantes 
WHERE fecha_registro = '2026-01-30';

-- eliminar por nombre específico
DELETE FROM estudiantes 
WHERE nombres = 'Diego';



-- modificación de la tabla y actualización de registros


-- agregar la nueva columna correo
ALTER TABLE estudiantes 
ADD COLUMN correo VARCHAR(100);

-- actualizar los correos de los estudiantes que quedaron en la tabla
UPDATE estudiantes SET correo = 'juan00@gmail.com' WHERE id_estudiante = 1;
UPDATE estudiantes SET correo = 'maria324@gmail.com' WHERE id_estudiante = 2;
UPDATE estudiantes SET correo = 'ana@gmail.com' WHERE id_estudiante = 4;
UPDATE estudiantes SET correo = 'luis2@gmail.com' WHERE id_estudiante = 5;
UPDATE estudiantes SET correo = 'mateo@gmail.com' WHERE id_estudiante = 7;
UPDATE estudiantes SET correo = 'lucia5@gmail.com' WHERE id_estudiante = 8;
UPDATE estudiantes SET correo = 'valentina@gmail.com' WHERE id_estudiante = 10;
UPDATE estudiantes SET correo = 'andres@gmail.com' WHERE id_estudiante = 11;
UPDATE estudiantes SET correo = 'camila87@gmail.com' WHERE id_estudiante = 12;
UPDATE estudiantes SET correo = 'daniel34@gmail.com' WHERE id_estudiante = 15;

-- verificacion de Fechas

-- Mostrar estudiantes registrados después de 2026-02-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';

-- Mostrar estudiantes registrados antes de 2026-05-01
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';

-- Mostrar estudiantes registrados entre dos fechas
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-03-31';

-- Mostrar estudiantes registrados exactamente en 2026-03-15
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';

--  Mostrar estudiantes del curso “Programacion” registrados después de 2026-01-01
SELECT * FROM estudiantes WHERE curso = 'Programacion' AND fecha_registro > '2026-01-01';