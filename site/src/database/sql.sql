/* para workbench - local - desenvolvimento */
CREATE DATABASE omega;
USE omega;

CREATE TABLE filme (
    idFilme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(80),
    genero VARCHAR(30),
    lancamento date
);

CREATE TABLE serie (
    idSerie INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(80),
    genero VARCHAR(30),
    lancamento date
);

CREATE TABLE animacao (
    idAnimacao INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(80),
    genero VARCHAR(30),
    lancamento date
);

create TABLE usuario (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50),
    senha VARCHAR(50),
    genero CHAR(1),
    desde datetime,
    fkFilme INT,
		FOREIGN KEY (fkFilme)
			REFERENCES filme (idfilme),
	fkSerie INT,
		FOREIGN KEY (fkSerie)
			REFERENCES serie (idSerie),
	fkAnimacao INT,
		FOREIGN KEY (fkAnimacao)
			REFERENCES animacao (idAnimacao)
);

create TABLE avaliacao (
    fkFilme INT,
		foreign key (fkFilme)
			references filme (idFilme),
    fkUsuario int,
		foreign key (fkUsuario)
			references usuario (idUsuario),
    nota int,
    primary key (fkFilme, fkUsuario)
);

insert into filme (titulo, genero, lancamento)
values
("A Guerra do Amanhã", "ficcao", "2021-07-02"),
("O Esquadrão Suicida", "acao", "2021-08-05"),
("Eternos", "aventura", "2021-11-04"),
("Liga da Justiça de Zack Snyder", "acao", "2021-03-18");

insert into avaliacao (fkFilme, fkUsuario, nota)
values
(3, 1, 5),
(2, 1, 4),
(1, 1, 3),

(4, 2, 4),
(1, 2, 3),
(2, 2, 1)
;

select * from avaliacao;

select sum(nota) as TotalFilme, fi.titulo from avaliacao av
												join filme fi on av.fkFilme = fi.idFilme
																		where fkFilme = 2;
select * from usuario;
select * from filme;

select us.nome, fi.titulo from usuario us 
					join filme fi on us.fkFilme = fi.idFilme;

UPDATE usuario SET senha = 'lucas123' WHERE email = 'lucas.lacerda@bandtec.com';

        UPDATE usuario SET senha = md5('${senha}') WHERE email = '${email}';


SET SQL_SAFE_UPDATES = 0;