var express = require("express");
var router = express.Router();

var bandaController = require("../controllers/bandaController");

router.get("/listarBandas", function (req, res) {
    bandaController.listarBandas(req, res);
});

router.get("/buscarBandaPorId/:idBanda", function (req, res) {
    bandaController.buscarBandaPorId(req, res);
});

router.get("/buscarRankingBandas", function (req, res) {
    bandaController.buscarRankingBandas(req, res);
});



module.exports = router;