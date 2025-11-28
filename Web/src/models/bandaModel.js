var database = require("../database/config");

function listar() {
    var instrucaoSql = `
        SELECT id, name, cover_path FROM band ORDER BY name;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    listar
};