var express = require("express");
var router = express.Router();

router.get("/", function (req, res) {
    res.render("landing_page");
});

module.exports = router;