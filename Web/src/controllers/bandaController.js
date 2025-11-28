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
        console.log("Houve um erro ao buscar os avisos: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function buscarPorId(req, res) {
    bandaModel.buscarPorId(req.params.idBanda).then(function (resultado) {
        
    })
}
module.exports = {
    listar,
    buscarPorId
}