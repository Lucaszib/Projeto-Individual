var database = require("../database/config")

function ranking() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function trocar(): ")
    var instrucao = `
                    select count(fkFilme) as TotalFilme, fi.titulo from usuario us
                        join filme fi on us.fkFilme = fi.idFilme
                            group by titulo order by TotalFilme desc;

    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    ranking
};