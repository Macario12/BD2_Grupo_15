const servidor = require('./app');
require('dotenv').config();

const PORT = process.env.PORT || 4000;
servidor.listen( PORT, () =>{
    console.log(`server listening on ${PORT}`);
});
