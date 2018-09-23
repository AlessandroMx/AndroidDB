-- ##########################################
-- # Archivo para crear base de datos       #
-- # Autor: Alessandro Chávez               #
-- # Base de datos: SQLite3                 #
-- ##########################################

-- Tabla de niveles de acceso
CREATE TABLE Acceso (
    id_acceso INTEGER PRIMARY KEY,
    nombre varchar(20) NOT NULL,
    descripcion varchar(120) NOT NULL
);

-- Tabla de datos de huellas digitales (NO SE USA)
--CREATE TABLE Huella (
--    id_huella INTEGER PRIMARY KEY
--);

-- Tabla de usuarios con referencias a las tablas anteriores
CREATE TABLE Usuarios (
    id_usuario INTEGER PRIMARY KEY,
    nombre VARCHAR(40) NOT NULL,
    apellido_paterno VARCHAR(20) NOT NULL,
    apellido_materno VARCHAR(20) NOT NULL,
    fecha_registro DATETIME NOT NULL,
    nivel_acceso INTEGER REFERENCES Acceso(id_acceso)--,
--    huella_dig INTEGER REFERENCES Huella(id_huella)
);
