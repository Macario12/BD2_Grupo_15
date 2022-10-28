=========================== CONFIGURACION ==================== 

sudo docker run -dp 27017:27017 -v mongoDB:/data/db --name mongoDB mongo

sudo docker exec -it mongoDB bash

sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Pacientes.csv" mongoDB:/tmp
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Habitaciones.csv" mongoDB:/tmp
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/LogHabitaciones.csv" mongoDB:/tmp
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/Logactividades1.csv" mongoDB:/tmp
sudo docker cp "/home/germanpc9/BD2_Grupo_15/Practica2/Archivos de entrada - CSV/LogActividades2.csv" mongoDB:/tmp

=========================== CARGA MASIVA ==================== 

mongoimport -d Practica2 -c Pacientes --type=csv --headerline --file /tmp/Pacientes.csv
mongoimport -d Practica2 -c Habitaciones --type=csv --headerline --file /tmp/Habitaciones.csv
mongoimport -d Practica2 -c Log_Habitaciones --type=csv --headerline --file /tmp/LogHabitaciones.csv
mongoimport -d Practica2 -c Log_Actividad --type=csv --headerline --file /tmp/Logactividades1.csv
mongoimport -d Practica2 -c Log_Actividad --type=csv --headerline --file /tmp/LogActividades2.csv

=========================== CONSULTA 1 ====================
db.Pacientes.aggregate([
    {
      $match: {
        edad: {
          $lt: 18
        }
      }
    },
    {
      $count: "Pediátrico"
    },
    {
        $unionWith:{
            coll: "Pacientes",
            pipeline:[
                {
                    $match: {
                        $and: [
                            {
                                edad: { 
                                    $gte: 18
                                }
                                },
                            {
                                edad: { 
                                    $lte: 60
                                }
                            }
                        ]
                    }
                },
                {
                    $count: "Mediana edad"
                }
            ]
        }
    },
    {
        $unionWith:{
            coll: "Pacientes",
            pipeline:[
                {
                    $match: {
                        edad: {
                            $gt: 60
                        }
                    }
                },
                {
                    $count: "Geriátrico"
                }
            ]
        }
    }
]);

=========================== CONSULTA 2 ==================== 
db.Log_Actividad.aggregate([
    {
        $group: { 
            "_id": { 
                    ip: "$idPaciente", 
                    ih: "$idHabitacion" 
                } 
        } 
    },
    {
        $group:{
            "_id": "$_id.ih","conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":-1
        }
    }
]);

=========================== CONSULTA 3 ==================== 
db.Pacientes.aggregate([
    {
        $group:{
            _id: "$genero", "conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":-1
        }
    }
]);

=========================== CONSULTA 4 ==================== 
db.Pacientes.aggregate([
    {
        $group:{
            _id: "$edad", "conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":-1
        }
    },
    {
        $limit:5
    }
]);

=========================== CONSULTA 5 ====================
db.Pacientes.aggregate([
    {
        $group:{
            _id: "$edad", "conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":1
        }
    },
    {
        $limit:5
    }
]);

=========================== CONSULTA 6 ====================
db.Log_Actividad.aggregate([
    {
        $group:{
            _id: "$idHabitacion", "conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":-1
        }
    },
    {
        $limit:5
    }
]);

=========================== CONSULTA 7 ====================
db.Log_Actividad.aggregate([
    {
        $group:{
            _id: "$idHabitacion", "conteo":{ $sum:1 }
        }
    },
    {
        $sort:{
            "conteo":1
        }
    },
    {
        $limit:5
    }
]);

=========================== CONSULTA 8 ====================
db.Log_Actividad.aggregate([
    {
        $group: { 
            "_id": { 
                    ip: "$idPaciente", 
                    it: "$timestampx" 
                } 
        } 
    },
    {
        $group:{
            "_id": "$_id.it", "conteo":{ $sum:1 }
        }
    },
    {
        $match: { 
            "_id" : { "$ne":null } 
        } 
    },
    {
        $sort:{
            "conteo":-1
        }
    },
    {
        $limit:1
    }
]);