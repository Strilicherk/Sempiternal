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
    var id = req.params.idBanda;
    
    if (id == '' || id == undefined) {
        console.log(`Id da banda vazio ou indefinido: ${id}`)
    } else {
        bandaModel.buscarPorId(id).then(function (resultado) {
            if (resultado.length <= 0) {
                res.status(404).json(resultado)
            } else {
                res.status(200).json(resultado)
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar a banda: ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        })
    }
}

module.exports = {
    listar,
    buscarPorId
}