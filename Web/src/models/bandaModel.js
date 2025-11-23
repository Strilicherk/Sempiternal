var database = require("../database/config");

function listar() {
    var instrucaoSql = `
        SELECT BAND_NAME, COVER_PATH FROM BAND;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    listar
};