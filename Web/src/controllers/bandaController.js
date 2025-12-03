var bandaModel = require("../models/bandaModel");

function listarBandas(req, res) {
    bandaModel.listarBandas().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([]);
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log(erro.sqlMessage);
        res.status(500).json("Houve um erro ao buscar as bandas.");
    });
}

function buscarBandaPorId(req, res) {
    var idBanda = req.params.idBanda;
    var idUsuario = req.query.idUsuario;
    
    if (idBanda == undefined) {
        res.status(400).json("ID da banda inválido!");
    } else if (idUsuario == undefined) {
        res.status(400).json("ID do usuário inválido!");
    } else {
        bandaModel.buscarBandaPorId(idBanda, idUsuario).then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(formatarJson(resultado));
            } else {
                res.status(404).json("Banda não encontrada");
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json("Houve um erro ao buscar a banda.");
        })
    }
}

function buscarRankingBandas(req, res) {
    bandaModel.buscarRankingBandas().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([]);
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log(erro.sqlMessage);
        res.status(500).json("Houve um erro ao buscar o ranking de bandas.");
    });
}

function formatarJson(resultado) {
    
    var bandaInfos = {
        band_id: resultado[0].band_id, 
        band: resultado[0].band, 
        genre: resultado[0].genre, 
        about: resultado[0].about, 
        banner_path: resultado[0].band_banner_path,
        is_favorite_band: resultado[0].is_favorite_band,
        
        albums: []
    }
    
    for (var i = 0; i < resultado.length; i++) {
        var albumExistente = bandaInfos.albums.find(function (album) {
            return album.album_id == resultado[i].album_id;
        })
        
        if (albumExistente) {
            albumExistente.musics.push( {
                music_id: resultado[i].music_id,
                music: resultado[i].music,
                mood: resultado[i].mood,
                color: resultado[i].color,
                is_liked: resultado[i].is_liked,
                is_favorite_music: resultado[i].is_favorite_music,
                
            })   
        } else {
            bandaInfos.albums.push( {
                album_id: resultado[i].album_id,
                album: resultado[i].album,
                album_release_date: resultado[i].album_release_date,
                album_cover_path: resultado[i].album_cover_path,
                
                musics: [{
                    music_id: resultado[i].music_id,
                    music: resultado[i].music,
                    mood: resultado[i].mood,
                    color: resultado[i].color,
                    is_liked: resultado[i].is_liked,
                    is_favorite_music: resultado[i].is_favorite_music,
                }]
            })
        }
    }
    
    return bandaInfos;
}


module.exports = {
    listarBandas,
    buscarBandaPorId,
    buscarRankingBandas,
}