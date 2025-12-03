var usuarioModel = require("../models/usuarioModel");

function autenticarUsuario(req, res) {
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    
    if (email == undefined) {
        res.status(404).json("Email não encontrado.");
    } else if (senha == undefined) {
        res.status(404).json("Senha não encontrada.");
    } else {
        usuarioModel.autenticarUsuario(email, senha).then(function (resultadoAutenticar) {
            if (resultadoAutenticar.length == 1) {
                res.status(200).json(resultadoAutenticar[0]);
            } else if (resultadoAutenticar.length == 0) {
                res.status(404).json("Email e/ou senha inválido(s)");
            } else {
                res.status(409).json("Ocorreu um erro inesperado. Tente novamente mais tarde.");
            }
        }).catch(function (erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json('Houve um erro ao tentar efetuar o login');
        });
    }
}

function cadastrarUsuario(req, res) {
    var nickname = req.body.nicknameServer;
    var email = req.body.emailServer;
    var senha = req.body.senhaServer;
    
    if (nickname == undefined) {
        res.status(400).json("Seu nickname está undefined!");
    } else if (email == undefined) {
        res.status(400).json("Seu email está undefined!");
    } else if (senha == undefined) {
        res.status(400).json("Sua senha está undefined!");
    } else {
        usuarioModel.cadastrarUsuario(nickname, email, senha).then(function (resultado) {
            res.status(200).json("Cadastro realizado com sucesso! Redirecionando para tela de Login...",);
        }).catch(function (erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            if (erro.errno == 1062) {
                res.status(409).json(erro.sqlMessage);
            } else {
                res.status(500).json('Houve um erro ao realizar o cadastro.');
            }
        });
    }
}

function favoritarMusica(req, res) {
    var idMusica = req.body.idMusicServer;
    var idUsuario = req.body.idUserServer;
    if (idUsuario === undefined) {
        res.status(400).json('Id de usuário inválido!');
    } else if (idMusica === undefined) {
        res.status(400).json('Id da música inválido!');
    } else {
        usuarioModel.favoritarMusica(idMusica, idUsuario).then(function(resultado) {
            res.status(200).json(resultado);
        }).catch(function(erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json('Houve um erro ao atualizar a música favorita.');
        });
    }
}

function listarMusicasCurtidas(req, res) {
    var idUsuario = req.params.idUsuario;
    
    if (idUsuario == undefined) {
        res.status(400).json("Id de usuário inválido!");
    } else {
        usuarioModel.listarMusicasCurtidas(idUsuario).then(function (resultado) {
            res.status(200).json(resultado);
        }).catch(function (erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json('Houve um erro ao listar as músicas do usuário.');
        });
    }
}

function buscarRankingUsuarioSentimentos(req, res) {
    var idUsuario = req.params.idUsuario;
    
    if (idUsuario == undefined) {
        res.status(400).json("Id de usuário inválido!");
    } else {
        usuarioModel.buscarRankingUsuarioSentimentos(idUsuario).then(function (resultado) {
            res.status(200).json(resultado);
        }).catch(function (erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json('Houve um erro ao buscar o ranking de sentimentos');
        });
    }
}

function favoritarBanda(req, res) {
    var idBanda = req.body.idBandServer;
    var idUsuario = req.body.idUserServer;
    
    if (idUsuario === undefined) {
        res.status(400).json("ID do usuário inválido!");
    } else if (idBanda === undefined) {
        res.status(400).json("ID da banda inválido!");
    } else {
        usuarioModel.favoritarBanda(idBanda, idUsuario).then(function(resultado) {
            res.status(200).json(resultado);
        }).catch(function(erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json("Houve um erro ao atualizar a banda favorita.");
        });
    }
}

function buscarBandaFavorita(req, res) {
    var idUsuario = req.params.idUsuario;
    if (idUsuario == undefined) {
        res.status(400).json('Id do usuário é inválido!')
    } else {
        usuarioModel.buscarBandaFavorita(idUsuario).then(function(resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado[0]); 
            } else {
                res.status(200).json(''); 
            }
        }).catch(function(erro) {
            console.log(erro);
            console.log(erro.sqlMessage);
            res.status(500).json('Houve um erro ao buscar a banda favorita desse usuário.');
        });
    }
}

module.exports = {
    autenticarUsuario,
    cadastrarUsuario,
    favoritarMusica,
    listarMusicasCurtidas,
    buscarRankingUsuarioSentimentos,
    favoritarBanda,
    buscarBandaFavorita
}