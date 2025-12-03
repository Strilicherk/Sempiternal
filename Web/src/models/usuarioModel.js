var database = require("../database/config")

function autenticarUsuario(email, senha) {
    var instrucaoSql = `
        SELECT id, nickname FROM user WHERE email = '${email}' AND password = '${senha}';
    `;
    return database.executar(instrucaoSql);
}

function cadastrarUsuario(nickname, email, senha) {
    var instrucaoSql = `
        INSERT INTO user (nickname, email, password) VALUES ('${nickname}', '${email}', '${senha}');
    `;
    return database.executar(instrucaoSql);
}

function favoritarMusica(idMusica, idUsuario) {
    var instrucaoSql = `
        UPDATE user SET music_id = ${idMusica} WHERE id = ${idUsuario}
    `;
    return database.executar(instrucaoSql);
}

function listarMusicasCurtidas(idUsuario) {
    var instrucaoSql = `
        SELECT * FROM vw_profile_liked_songs WHERE user_id = ${idUsuario} ORDER BY is_favorite DESC, music_name;
    `;
    return database.executar(instrucaoSql);
}

function buscarRankingUsuarioSentimentos(idUsuario) {
    var instrucaoSql = `
        SELECT * FROM vw_user_mood_stats WHERE user_id = ${idUsuario} ORDER BY total_likes DESC;
    `;
    return database.executar(instrucaoSql);
}

function favoritarBanda(idBanda, idUsuario) {
    var instrucaoSql = `
        UPDATE user SET band_id = ${idBanda} WHERE id = ${idUsuario}
    `;
    return database.executar(instrucaoSql);
}

function buscarBandaFavorita(idUsuario) {
    var instrucaoSql = `
        SELECT b.name as name FROM user u JOIN band b ON u.band_id = b.id WHERE u.id = ${idUsuario};
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    autenticarUsuario,
    cadastrarUsuario,
    favoritarMusica,
    listarMusicasCurtidas,
    buscarRankingUsuarioSentimentos,
    favoritarBanda,
    buscarBandaFavorita
};