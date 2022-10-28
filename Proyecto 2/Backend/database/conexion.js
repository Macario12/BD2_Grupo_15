const mysql = require('mysql2');
require('dotenv').config();

const conn = mysql.createConnection({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  multipleStatements: true
});

conn.connect(function (err) {
  if (err) {
    console.log(`DB not connected, ' + ${err.stack}`);
    return;
  }
    console.log('correct, DB connected.');
});

module.exports = conn;
