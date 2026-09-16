-- 1. Crear el nuevo usuario administrador
CREATE USER admin WITH PASSWORD '123456';
-- 2. crear la base de datos gestudiantes asociada al usuario
ALTER DATABASE gestudiantes OWNER TO admin;
-- 3. Conectarse a la base de datos con el usuario
\c gestudiantes admin
-- 4. crear la tabla estudiantes
   CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    identificacion NUMERIC UNIQUE NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    correo VARCHAR(150) UNIQUE,
    telefono NUMERIC
);
-- 5. Verficar si ha informacion de base de datos esta ok listando bases de datos
\l
-- 6. Verficar si ha informacion de tabla esta ok
\d
-- 7. Verficar si ha informacion en tabla esta ok
select * from estudantes;

