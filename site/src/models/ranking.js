var database = require("../database/config");

function buscarUltimasMedidas(idAquario, limite_linhas) {
    instrucaoSql = `
                    select count(fkFilme) as TotalFilme, fi.titulo from usuario us
                        join filme fi on us.fkFilme = fi.idFilme
                            group by titulo order by TotalFilme desc;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal() {
    instrucaoSql = `
                    select count(fkFilme) as TotalFilme, fi.titulo from usuario us
                        join filme fi on us.fkFilme = fi.idFilme
                            group by titulo order by TotalFilme desc;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarMedidasEmTempoReal
}