const conn = require('./conexion');

const execute = async function consultar(query) {
  try {
    const [result] = await conn.promise().execute(query);
    return {query, result};
  } catch (err) {
    return {err};
  }
};

const execute_sp = async function execute_sp(proc_name, params) {
  try {
    const formated_params = params.join(`', '`)
    let proc = `CALL ${proc_name}('${formated_params}');`
    console.log(params.length)
    if(params.length == 0){
        proc = `CALL ${proc_name}();`
    }
    const [result] = await conn.promise().execute(proc);
    return {proc, result};
  } catch (err) {
    return {err};
  }
};

module.exports = {
  execute,
  execute_sp
}