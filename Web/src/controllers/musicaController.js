var musicaModel = require("../models/musicaModel");

function curtirMusica(req, res) {
    var idMusica = req.body.musicIdServer; 
    var idUsuario = req.body.userIdServer;
    var acao = req.body.acao;
    
    if (idMusica == undefined) {
        res.status(400).json("Id da música é inválido!");
    } else if (idUsuario == undefined) {
        res.status(400).json("Id do usuário é inválido!");
    } else {
        if (acao == 'descurtir') {
            musicaModel.descurtirMusica(idMusica, idUsuario).then(function(resultado) {
                res.status(200).json(resultado);
            }).catch(function(erro) {
                console.log(erro);
                console.log(erro.sqlMessage);
                res.status(500).json('Houve um erro ao "descurtir" a música.');
            });
        } else {
            musicaModel.curtirMusica(idMusica, idUsuario).then(function(resultado) {
                res.status(200).json(resultado);
            }).catch(function(erro) {
                console.log(erro);
                console.log(erro.sqlMessage);
                res.status(500).json('Houve um erro ao curtir a música.');
            });
        }
    }
}

function buscarRankingGeralMusica(req, res) {
    musicaModel.buscarRankingGeralMusica().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([]);
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log(erro.sqlMessage);
        res.status(500).json('Houve um erro ao buscar o ranking de músicas.');
    });
}

function buscarRankingGeralSentimentos(req, res) {
    musicaModel.buscarRankingGeralSentimentos().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(200).json([]);
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log(erro.sqlMessage);
        res.status(500).json('Houve um erro ao buscar o ranking de sentimentos.');
    });
}

module.exports = {
    curtirMusica,
    buscarRankingGeralMusica,
    buscarRankingGeralSentimentos
}