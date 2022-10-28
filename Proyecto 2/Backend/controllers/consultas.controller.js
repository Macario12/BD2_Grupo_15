var conexion = require('../database/exec')

async function consulta1(req, res){
    
	const consulta = `SELECT "Pediátrico" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad < 18
UNION
SELECT "Mediana edad" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad >= 18 AND edad <= 60
UNION
SELECT "Geriátrico" AS CATEGORIA, COUNT(*) AS TOTAL FROM PACIENTE WHERE edad > 60;`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta2(req, res){
    
	const consulta = `SELECT distinct HABITACION.idHabitacion AS HABITACION, count(DISTINCT PACIENTE.idPaciente) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN PACIENTE ON PACIENTE.idPaciente = LOG_ACTIVIDAD.PACIENTE_idPaciente
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL DESC;
`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta3(req, res){
    
	const consulta = `SELECT PACIENTE.genero AS GENERO, count(*) AS TOTAL FROM PACIENTE 
GROUP BY PACIENTE.genero
ORDER BY TOTAL DESC;`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta4(req, res){
    
	const consulta = `SELECT PACIENTE.edad AS EDAD, COUNT(*) AS TOTAL FROM PACIENTE
GROUP BY PACIENTE.edad 
ORDER BY TOTAL DESC 
LIMIT 5;`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta5(req, res){
    
	const consulta = `SELECT PACIENTE.edad AS EDAD, COUNT(*) AS TOTAL FROM PACIENTE
GROUP BY PACIENTE.edad 
ORDER BY TOTAL ASC 
LIMIT 5;`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta6(req, res){
    
	const consulta = `SELECT HABITACION.idHabitacion, HABITACION.habitacion, count(*) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL DESC
LIMIT 5;
`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta7(req, res){
    
	const consulta = `SELECT HABITACION.idHabitacion, HABITACION.habitacion, count(*) AS TOTAL FROM LOG_ACTIVIDAD
INNER JOIN HABITACION ON HABITACION.idHabitacion = LOG_ACTIVIDAD.HABITACION_idHabitacion
GROUP BY HABITACION.idHabitacion
ORDER BY TOTAL ASC
LIMIT 5;
`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

async function consulta8(req, res){
    
	const consulta = `SELECT LOG_ACTIVIDAD.timestampx AS FECHA, COUNT(DISTINCT PACIENTE_idPaciente ) AS TOTAL FROM LOG_ACTIVIDAD
GROUP BY LOG_ACTIVIDAD.timestampx
ORDER BY TOTAL DESC
LIMIT 1;`
	
	const respuesta = await conexion.execute(consulta)
	return res.status(200).send(respuesta.result)

}

module.exports = {
    consulta1,consulta2,consulta3,consulta4,consulta5,consulta6,consulta7,consulta8
}