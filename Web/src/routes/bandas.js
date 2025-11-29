var express = require("express");
var router = express.Router();

var bandaController = require("../controllers/bandaController");

router.get("/listar", function (req, res) {
    bandaController.listar(req, res);
});

router.get("/buscar/:idBanda", function (req, res) {
    bandaController.buscarPorId(req, res);
});

module.exports = router;