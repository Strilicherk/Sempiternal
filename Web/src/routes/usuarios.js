var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.post("/cadastrarUsuario", function (req, res) {
    usuarioController.cadastrarUsuario(req, res);
})

router.post("/autenticarUsuario", function (req, res) {
    usuarioController.autenticarUsuario(req, res);
});

router.post("/favoritarMusica", function (req, res) {
    usuarioController.favoritarMusica(req, res);
});

router.get("/listarMusicasCurtidas/:idUsuario", function (req, res) {
    usuarioController.listarMusicasCurtidas(req, res);
})

router.get("/buscarRankingUsuarioSentimentos/:idUsuario", function (req, res) {
    usuarioController.buscarRankingUsuarioSentimentos(req, res);
});

router.post("/favoritarBanda", function (req, res) {
    usuarioController.favoritarBanda(req, res)
})

router.get("/favorita/:idUsuario", function(req, res) {
    usuarioController.buscarBandaFavorita(req, res);
});

module.exports = router;