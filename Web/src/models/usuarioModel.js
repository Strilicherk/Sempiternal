var database = require("../database/config")

function autenticar(email, senha) {
    var instrucaoSql = `
        SELECT id, nickname FROM user WHERE email = '${email}' AND password = '${senha}';
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

// Coloque os mesmos parâmetros aqui. Vá para a var instrucaoSql
function cadastrar(nickname, email, senha) {
    var instrucaoSql = `
        INSERT INTO user (nickname, email, password) VALUES ('${nickname}', '${email}', '${senha}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    autenticar,
    cadastrar
};