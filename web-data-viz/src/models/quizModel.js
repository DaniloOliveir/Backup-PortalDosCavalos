// const { pontos } = require("../controllers/usuarioController");
var database = require("../database/config")

function resultadoQuiz(fkUsuario, acertos, erros) {
    var instrucaoSql = `
    insert into historicoQuiz (fkUsuario, dtJogo, acertos, erros) values
	(${fkUsuario}, current_timestamp(), ${acertos}, ${erros});
    `;

    return database.executar(instrucaoSql);
}

function pontos() {
    var instrucaoSql = `
    select * from historicoQuiz
    order by dtJogo;
    `;

    console.log('Estou na função pontos')
    return database.executar(instrucaoSql);
}

module.exports = {
    resultadoQuiz,
    pontos
};