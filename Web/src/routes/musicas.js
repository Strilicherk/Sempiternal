var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.post("/curtirMusica", function (req, res) {
    musicaController.curtirMusica(req, res);
});

router.get("/buscarRankingGeralMusica", function (req, res) {
    musicaController.buscarRankingGeralMusica(req, res);
});

router.get("/buscarRankingGeralSentimentos", function (req, res) {
    musicaController.buscarRankingGeralSentimentos(req, res);
});

module.exports = router;