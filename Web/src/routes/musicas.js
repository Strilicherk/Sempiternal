var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.post("/curtir", function (req, res) {
    musicaController.curtir(req, res);
});

router.post("/favoritar", function (req, res) {
    musicaController.atualizarFavorito(req, res);
});

router.get("/buscarRanking", function (req, res) {
    musicaController.buscarRanking(req, res);
});

router.get("/buscarRankingSentimentos", function (req, res) {
    musicaController.buscarRankingSentimentos(req, res);
});

module.exports = router;