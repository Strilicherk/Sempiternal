var database = require("../database/config");

function verificarCurtida(idMusica, idUsuario) {
    var instrucaoSql = `
        SELECT * FROM music_like WHERE music_id = ${idMusica} AND user_id = ${idUsuario};
    `;
    return database.executar(instrucaoSql);
}

function curtir(idMusica, idUsuario) {
    var instrucaoSql = `
        INSERT INTO music_like (music_id, user_id) VALUES (${idMusica}, ${idUsuario});
    `;
    return database.executar(instrucaoSql);
}

function descurtir(idMusica, idUsuario) {
    var instrucaoSql = `
        DELETE FROM music_like WHERE music_id = ${idMusica} AND user_id = ${idUsuario};
    `;
    return database.executar(instrucaoSql);
}

function atualizarFavorito(idMusica, idUsuario) {
    var instrucaoSql = `UPDATE user SET music_id = ${idMusica} WHERE id = ${idUsuario}`;
    return database.executar(instrucaoSql);
}


module.exports = {
    verificarCurtida,
    curtir,
    descurtir,
    atualizarFavorito,
}