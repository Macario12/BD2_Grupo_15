const bodParser = require('body-parser');
const express = require('express');
const http = require('http');
const cors = require('cors');
const app = express();

const servidor = http.createServer(app);

//Routes
var route_consultas = require('./routes/consultas.route')

// MIDDLEWARES
// a middleware with no mount path; gets executed for every request to the app
app.use(bodParser.urlencoded({limit:'50mb', extended:true}))
app.use(bodParser.json({limit:'50mb', extended:true}))
app.use(cors());



//Routes
app.get('/', (req, res) => {
    res.send('Proyecto Fase 2 Bases de datos.');
})

app.use('/api', route_consultas)


module.exports = servidor;