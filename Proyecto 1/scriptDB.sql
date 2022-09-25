CREATE DATABASE Proyecto2Bases;
USE Proyecto2Bases;

CREATE TABLE HABITACION(
	idHabitacion int primary key auto_increment,
    habitacion varchar(50)
);
DROP TABLE LOG_HABITACION;
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


CREATE TABLE TEMP_LOG_HABITACION(
	idHabitacion int,
    timestampx VARCHAR(100),
    statusx VARCHAR(45),
    Habitacion VARCHAR(250)
    
);

CREATE TABLE TEMP_LOG_ACTIVIDAD(
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    idHabitacion INT,
    idPaciente INT,
    Edad INT,
    Genero VARCHAR(100),
    Habitacion VARCHAR(250)
	
);

CREATE TABLE TEMP_LOG_ACTIVIDAD2(
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    idHabitacion INT,
    idPaciente INT
);