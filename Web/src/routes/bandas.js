var express = require("express");
var router = express.Router();

var bandaController = require("../controllers/bandaController");

router.get("/listar", function (req, res) {
    bandaController.listar(req, res);
});

module.exports = router;