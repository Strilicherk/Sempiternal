// const { buscarPorId } = require("../controllers/bandaController");
var database = require("../database/config");

function listar() {
    var instrucaoSql = `
        SELECT id, name, cover_path FROM band ORDER BY name;
    `;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarPorId(id) {
    var instrucaoSql = `
        SELECT * FROM vw_band_album_music WHERE id = ${id};
    `
    return database.executar(instrucaoSql);
}


module.exports = {
    listar,
    buscarPorId
};