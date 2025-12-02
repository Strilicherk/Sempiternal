var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.post("/curtir", function (req, res) {
    musicaController.curtir(req, res);
});

router.post("/favoritar", function (req, res) {
    musicaController.atualizarFavorito(req, res);
});


module.exports = router;