var database = require("../database/config");

function listar() {
    var instrucaoSql = `
        SELECT ID_BAND, BAND_NAME, COVER_PATH FROM BAND ORDER BY BAND_NAME;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    listar
};