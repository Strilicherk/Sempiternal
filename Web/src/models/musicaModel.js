var database = require("../database/config");

function curtirMusica(idMusica, idUsuario) {
    var instrucaoSql = `
        INSERT INTO music_like (music_id, user_id) VALUES (${idMusica}, ${idUsuario});
    `;
    return database.executar(instrucaoSql);
}

function descurtirMusica(idMusica, idUsuario) {
    var instrucaoSql = `
        DELETE FROM music_like WHERE music_id = ${idMusica} AND user_id = ${idUsuario};
    `;
    return database.executar(instrucaoSql);
}

function buscarRankingGeralMusica() {
    var instrucaoSql = `
        SELECT * FROM vw_music_ranking
    `;
    return database.executar(instrucaoSql);
}

function buscarRankingGeralSentimentos() {
    var instrucaoSql = `
        SELECT * FROM vw_mood_ranking; 
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    curtirMusica,
    descurtirMusica,
    buscarRankingGeralMusica,
    buscarRankingGeralSentimentos
}