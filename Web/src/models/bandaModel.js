// const { buscarPorId } = require("../controllers/bandaController");
var database = require("../database/config");

function listarBandas() {
    var instrucaoSql = `
        SELECT id, name, cover_path FROM band ORDER BY name;
    `;
    return database.executar(instrucaoSql);
}

function buscarBandaPorId(idBanda, idUsuario) {
    var instrucaoSql = `
        SELECT 
            vw.*,
            IF(ml.user_id IS NOT NULL, 1, 0) AS is_liked,
            IF(vw.band_id = u.band_id, 1, 0) AS is_favorite_band,
            IF(vw.music_id = u.music_id, 1, 0) AS is_favorite_music
        FROM
            vw_band_album_music AS vw
                LEFT JOIN
            music_like ml ON vw.music_id = ml.music_id
                AND ml.user_id = ${idUsuario}
                LEFT JOIN
            user u ON u.id = ${idUsuario}
                WHERE vw.band_id = ${idBanda};
    `;
    return database.executar(instrucaoSql);
}

function buscarRankingBandas() {
    var instrucaoSql = `
        SELECT * FROM vw_band_ranking;
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    listarBandas,
    buscarBandaPorId,
    buscarRankingBandas,
};