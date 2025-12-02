var usuarioModel = require("../models/usuarioModel");

function autenticar(req, res) {
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    
    if (email == undefined) {
        res.status(404).send("Email não encontrado.");
    } else if (senha == undefined) {
        res.status(404).send("Senha não encontrada.");
    } else {
        usuarioModel.autenticar(email, senha).then(function (resultadoAutenticar) {
                if (resultadoAutenticar.length == 1) {
                    res.status(200).json(resultadoAutenticar[0]);
                } else if (resultadoAutenticar.length == 0) {
                    res.status(404).send("Email e/ou senha inválido(s)");
                } else {
                    res.status(409).send("Ocorreu um erro inesperado. Tente novamente mais tarde.");
                }
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
    }
}

function cadastrar(req, res) {
    var nickname = req.body.nicknameServer;
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    
    if (nickname == undefined) {
        res.status(400).send("Seu nickname está undefined!");
    } else if (email == undefined) {
        res.status(400).send("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).send("Sua senha está undefined!");
    } else {
        usuarioModel.cadastrar(nickname, email, senha).then(function (resultado) {
            res.json(resultado);
        }).catch(function (erro) {
            console.log(erro);
            console.log(
                "\nHouve um erro ao realizar o cadastro! Erro: ",
                erro.sqlMessage
            );
            if (erro.errno == 1062) {
                res.status(409).json(erro.sqlMessage);
            } else {
                res.status(500).json(erro.sqlMessage);
            }
        }
    );
}
}

module.exports = {
    autenticar,
    cadastrar
}