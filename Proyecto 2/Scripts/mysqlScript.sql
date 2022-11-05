-- // COMANDOS EN DOCKER

-- //CREAR VOLUMEN PARA MYSQL
-- sudo docker volume create data-mysql

-- // LEVANTAR CONTENEDOR DE MYSQL
-- sudo docker run -d -p 33060:3306 --name mysql-db  -e MYSQL_ROOT_PASSWORD=secret --mount src=data-mysql,dst=/var/lib/mysql mysql

-- //CONSOLA DE MYSQL
-- sudo docker exec -it mysql-db mysql -p

-- //ACCEDER AL BASH DEL CONTENEDOR
-- sudo docker exec -it mysql-db bash


-- sudo docker cp "/home/pdanielr225/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Pacientes.csv" mysql-db:/var/lib/mysql-files/
-- sudo docker cp "/home/pdanielr225/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Habitaciones.csv" mysql-db:/var/lib/mysql-files/
-- sudo docker cp "/home/pdanielr225/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/LogHabitaciones.csv" mysql-db:/var/lib/mysql-files/
-- sudo docker cp "/home/pdanielr225/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Logactividades1.csv" mysql-db:/var/lib/mysql-files/
-- sudo docker cp "/home/pdanielr225/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/LogActividades2.csv" mysql-db:/var/lib/mysql-files/


-- ========================= BASE DE DATOS Y TABLAS

CREATE DATABASE Practica2Bases;
USE Practica2Bases;

DROP database Practica2Bases;
DROP TABLE LOG_HABITACION;
DROP TABLE LOG_ACTIVIDAD;
DROP TABLE HABITACION;
DROP TABLE PACIENTE;

CREATE TABLE HABITACION(
	idHabitacion int primary key auto_increment,
    habitacion varchar(50)
);
CREATE TABLE LOG_HABITACION(
	idLogHabitacion int primary key auto_increment,
	timestampx VARCHAR(100),
    statusx VARCHAR(45),
    idHabitacion int,
    FOREIGN KEY (idHabitacion) REFERENCES HABITACION (idHabitacion) ON DELETE CASCADE 
);

CREATE TABLE PACIENTE(
	idPaciente int primary key auto_increment,
    edad INT,
    genero VARCHAR(20)
);
CREATE TABLE LOG_ACTIVIDAD(
	id_log_actividad INT PRIMARY KEY auto_increment,
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    PACIENTE_idPaciente INT,
    HABITACION_idHabitacion INT,
    FOREIGN KEY (HABITACION_idHabitacion) REFERENCES HABITACION (idHabitacion) ON DELETE CASCADE,
    FOREIGN KEY (PACIENTE_idPaciente) REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE 
);

-- =============== TABLAS TEMPORALES
CREATE TABLE TEMP_LOG_HABITACION(
    idHabitacion VARCHAR(500),
    timestampx VARCHAR(500),
    statusx VARCHAR(500),
    Habitacion VARCHAR(500)
);

CREATE TABLE TEMP_LOG_ACTIVIDAD(
    timestampx VARCHAR(500),
    actividad VARCHAR(500),
    idHabitacion VARCHAR(500),
    idPaciente VARCHAR(500),
    Edad VARCHAR(500),
    Genero VARCHAR(500),
    Habitacion VARCHAR(500)
);

CREATE TABLE TEMP_LOG_ACTIVIDAD2(
    timestampx VARCHAR(500),
    actividad VARCHAR(500),
    idHabitacion VARCHAR(500),
    idPaciente VARCHAR(500)
);

-- =========== CARGA MASIVA

-- ESTO NO ES NECESARIO
set global local_infile = 0;
SET GLOBAL secure_file_priv = "/tmp/";
show variables like "secure_file_priv";
show variables like "local_infile";


LOAD DATA  INFILE '/var/lib/mysql-files/Pacientes.csv'
INTO TABLE PACIENTE
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA  INFILE '/var/lib/mysql-files/Habitaciones.csv'
INTO TABLE HABITACION
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA  INFILE '/var/lib/mysql-files/LogHabitaciones.csv'
INTO TABLE TEMP_LOG_HABITACION
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA  INFILE '/var/lib/mysql-files/Logactividades1.csv'
INTO TABLE TEMP_LOG_ACTIVIDAD
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA  INFILE '/var/lib/mysql-files/LogActividades2.csv'
INTO TABLE TEMP_LOG_ACTIVIDAD2
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;


INSERT INTO LOG_HABITACION (timestampx,statusx,idHabitacion)  select timestampx,statusx,idHabitacion from TEMP_LOG_HABITACION;
INSERT INTO LOG_ACTIVIDAD (timestampx,actividad,PACIENTE_idPaciente,HABITACION_idHabitacion)  select timestampx,actividad,idPaciente,idHabitacion from TEMP_LOG_ACTIVIDAD;
INSERT INTO LOG_ACTIVIDAD (timestampx,actividad,PACIENTE_idPaciente,HABITACION_idHabitacion)  select timestampx,actividad,idPaciente,idHabitacion from TEMP_LOG_ACTIVIDAD2;

SELECT * FROM PACIENTE LIMIT 20;
SELECT * FROM HABITACION LIMIT 20;
SELECT * FROM LOG_HABITACION LIMIT 20;
SELECT * FROM LOG_ACTIVIDAD LIMIT 20;

SELECT * FROM PACIENTE ORDER BY idPaciente DESC LIMIT 20;
SELECT * FROM HABITACION ORDER BY idHabitacion DESC LIMIT 20;
SELECT * FROM LOG_HABITACION ORDER BY idLogHabitacion DESC LIMIT 20;
SELECT * FROM LOG_ACTIVIDAD ORDER BY id_log_actividad DESC LIMIT 20;

SELECT count(*) FROM PACIENTE;
SELECT count(*) FROM HABITACION;
SELECT count(*) FROM LOG_HABITACION;
SELECT count(*) FROM LOG_ACTIVIDAD;



-- =================== CONSULTAS


-- ============================
-- ======== CONSULTA 1 ========
-- ============================
SELECT "Pediátrico" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad < 18
UNION
SELECT "Mediana edad" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad >= 18 AND edad <= 60
UNION
SELECT "Geriátrico" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad > 60;


-- ============================
-- ======== CONSULTA 2 ========
-- ============================
SELECT distinct HABITACION.idHabitacion AS HABITACION, count(DISTINCT PACIENTE.idPaciente) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN PACIENTE ON PACIENTE.idPaciente = LOG_ACTIVIDAD.PACIENTE_idPaciente
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL DESC;

-- ============================
-- ======== CONSULTA 3 ========
-- ============================
SELECT PACIENTE.genero AS GENERO, count(*) AS TOTAL FROM PACIENTE 
GROUP BY PACIENTE.genero
ORDER BY TOTAL DESC;


-- ============================
-- ======== CONSULTA 4 ========
-- ============================
SELECT PACIENTE.edad AS EDAD, COUNT(*) AS TOTAL FROM PACIENTE
GROUP BY PACIENTE.edad 
ORDER BY TOTAL DESC 
LIMIT 5;


-- ============================
-- ======== CONSULTA 5 ========
-- ============================
SELECT PACIENTE.edad AS EDAD, COUNT(*) AS TOTAL FROM PACIENTE
GROUP BY PACIENTE.edad 
ORDER BY TOTAL ASC 
LIMIT 5;


-- ============================
-- ======== CONSULTA 6 ========
-- ============================
SELECT HABITACION.idHabitacion, HABITACION.habitacion, count(*) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL DESC
LIMIT 5;


-- ============================
-- ======== CONSULTA 7 ========
-- ============================
SELECT HABITACION.idHabitacion, HABITACION.habitacion, count(*) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL ASC
LIMIT 5;


-- ============================
-- ======== CONSULTA 8 ========
-- ============================
SELECT LOG_ACTIVIDAD.timestampx AS FECHA, COUNT(DISTINCT PACIENTE_idPaciente ) AS TOTAL FROM LOG_ACTIVIDAD
GROUP BY LOG_ACTIVIDAD.timestampx
ORDER BY TOTAL DESC
LIMIT 1;

-- ============================
-- ======== CONSULTA 9 ========
-- ============================
SELECT * FROM PACIENTE;

-- ============================
-- ======== CONSULTA 10 ========
-- ============================
SELECT * FROM HABITACION;