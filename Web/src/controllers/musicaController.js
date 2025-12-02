var musicaModel = require("../models/musicaModel");

function curtir(req, res) {
    var idMusica = req.body.musicIdServer; 
    var idUsuario = req.body.userIdServer;
    var acao = req.body.acao;
    
    if (!idMusica || !idUsuario) {
        res.status(400).send(`Não foi possível coletar a informação de música (${idMusica}) ou de usuário (${idUsuario})`);
        return;
    }
    
    if (acao == 'descurtir') {
        musicaModel.descurtir(idMusica, idUsuario).then(function(resultado) {
            res.status(200).json(resultado);
        }).catch(function(erro) {
            console.log(erro);
            res.status(500).json(erro.sqlMessage);
        });
    } else {
        musicaModel.curtir(idMusica, idUsuario).then(function(resultado) {
            res.status(200).json(resultado);
        }).catch(function(erro) {
            console.log(erro);
            res.status(500).json(erro.sqlMessage);
        });
    }
}

function atualizarFavorito(req, res) {
    var idMusica = req.body.idMusicServer;
    var idUsuario = req.body.idUserServer;


    musicaModel.atualizarFavorito(idMusica, idUsuario).then(function(resultado) {
        res.status(200).json(resultado);
    }).catch(function(erro) {
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    curtir,
    atualizarFavorito,
}