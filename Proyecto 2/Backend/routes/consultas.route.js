var controller = require('../controllers/consultas.controller');
var express = require('express')
let api = express.Router()

api.get('/Consulta1', controller.consulta1);
api.get('/Consulta2', controller.consulta2);
api.get('/Consulta3', controller.consulta3);
api.get('/Consulta4', controller.consulta4);
api.get('/Consulta5', controller.consulta5);
api.get('/Consulta6', controller.consulta6);
api.get('/Consulta7', controller.consulta7);
api.get('/Consulta8', controller.consulta8);

module.exports = api;