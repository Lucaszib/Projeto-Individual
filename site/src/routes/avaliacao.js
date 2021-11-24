var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    usuarioController.listar(req, res);
});

router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});

router.post("/atualizarSenha", function (req, res) {
    usuarioController.atualizarSenha(req, res);
});

router.post("/trocar", function (req, res) {
    usuarioController.trocar(req, res);
});

router.post("/avaliar", function (req, res) {
    usuarioController.avaliar(req, res);
});

router.post("/visualizar", function (req, res) {
    usuarioController.visualizar(req, res);
});

module.exports = router;