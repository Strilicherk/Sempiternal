var bandaModel = require("../models/bandaModel");

function listar(req, res) {
    bandaModel.listar().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([]);
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as bandas: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function buscarPorId(req, res) {
    var idBanda = req.params.idBanda;
    var idUsuario = req.query.idUsuario;
    
    if (!idBanda || !idUsuario) {
        console.log(`Id da banda ou do usuário invalidos: ${idBanda} | ${idUsuario}`)
    } else {
        bandaModel.buscarPorId(idBanda, idUsuario).then(function (resultado) {
            if (resultado.length <= 0) {
                res.status(404).json(resultado);
            } else {
                res.status(200).json(formatarJson(resultado));
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a banda: ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        })
    }
}

function formatarJson(resultado) {
    
    var bandaInfos = {
        band_id: resultado[0].band_id, 
        band: resultado[0].band, 
        genre: resultado[0].genre, 
        about: resultado[0].about, 
        banner_path: resultado[0].band_banner_path,
        
        albums: []
    }
    
    console.log('Somente banda', bandaInfos)
    
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
                }]
            })
        }
    }
    
    console.log('Pós formatação', bandaInfos)
    return bandaInfos;
}


module.exports = {
    listar,
    buscarPorId
}