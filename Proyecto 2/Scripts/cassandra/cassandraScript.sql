=========================== CONFIGURACION DOCKER ==================== 

npm install cassandra-driver

sudo docker-compose up --build

sudo docker start cassandra_cassandra_1

sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Pacientes.csv" cassandra_cassandra_1:/pacientes;
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Habitaciones.csv" cassandra_cassandra_1:/habitaciones;
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Proyecto 2/Archivos de entrada - CSV/LogHabitaciones2.csv" cassandra_cassandra_1:/logHabitaciones2;
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Proyecto 2/Archivos de entrada - CSV/LogActividades13.csv" cassandra_cassandra_1:/logActividades13;
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Proyecto 2/Archivos de entrada - CSV/LogActividades22.csv" cassandra_cassandra_1:/logActividades22;

sudo docker exec -it cassandra_cassandra_1 cqlsh -u cassandra -p cassandra

=========================== CONFIGURACION CASSANDRA ==================== 

DESC KEYSPACES;

DESC SCHEMA;

CREATE KEYSPACE proyecto2 WITH REPLICATION = {'class' : 'SimpleStrategy','replication_factor' : 1};

USE proyecto2;

=========================== CREACION DE TABLAS ==================== 
CREATE TABLE IF NOT EXISTS paciente (
    idPaciente INT, 
    edad INT, 
    genero TEXT, 
    PRIMARY KEY (idPaciente, edad, genero)
);

CREATE TABLE IF NOT EXISTS habitacion (
    idHabitacion INT, 
    habitacion TEXT,
    PRIMARY KEY (idHabitacion)
);

CREATE TABLE IF NOT EXISTS log_habitacion (
    idLogHabitacion INT,
    idHabitacion INT,
    timestampx TEXT,
    statusx TEXT,
    Habitacion TEXT,
    PRIMARY KEY (idLogHabitacion)
);

CREATE TABLE IF NOT EXISTS log_actividad (
	idLogActividad INT,
    timestampx TEXT,
    actividad TEXT,
    idHabitacion INT,
    idPaciente INT,
    PRIMARY KEY (idLogActividad)
);
=========================== CARGA MASIVA ==================== 
COPY proyecto2.paciente (idPaciente, edad, genero) FROM '/pacientes' WITH DELIMITER = ',' AND HEADER = TRUE;
COPY proyecto2.habitacion (idHabitacion, habitacion) FROM '/habitaciones' WITH DELIMITER = ',' AND HEADER = TRUE;
COPY proyecto2.log_habitacion (idLogHabitacion, idHabitacion, timestampx, statusx, Habitacion) FROM '/logHabitaciones2' WITH DELIMITER = ',' AND HEADER = TRUE;
COPY proyecto2.log_actividad (idLogActividad, timestampx, actividad, idHabitacion, idPaciente) FROM '/logActividades22' WITH DELIMITER = ',' AND HEADER = TRUE;
COPY proyecto2.log_actividad (idLogActividad, timestampx, actividad, idHabitacion, idPaciente) FROM '/logActividades13' WITH DELIMITER = ',' AND HEADER = TRUE;

=========================== CONSULTA 1 ==================== 
SELECT COUNT(*) AS Pediatrico FROM paciente WHERE edad < 18 ALLOW FILTERING;
SELECT COUNT(*) AS Mediana FROM paciente WHERE edad >= 18 AND edad <= 60 ALLOW FILTERING;
SELECT COUNT(*) AS Geriatrico FROM paciente WHERE edad > 60 ALLOW FILTERING;

=========================== CONSULTA 2 ==================== 

=========================== CONSULTA 3 ==================== 
SELECT genero AS Genero, count(*) AS Total FROM paciente WHERE genero = 'Femenino' ALLOW FILTERING;
SELECT genero AS Genero, count(*) AS Total FROM paciente WHERE genero = 'Masculino' ALLOW FILTERING;
SELECT genero AS Genero, count(*) AS Total FROM paciente WHERE genero = 'Otro' ALLOW FILTERING;
