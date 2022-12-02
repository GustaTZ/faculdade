/* COMANDOS DA LINGUAGEM SQL */
/* Cria a base de Dados */
CREATE DATABASE dbusuarios;

/* ESCOLHER UMA BASE DE DADOS */
USE dbusuarios;

/* CRIAR UMA TABELA */
CREATE TABLE usuario(
	codigo int primary key auto_increment,
    nome varchar(30),
    login varchar(15),
    senha varchar(10)
);

/* INSERIR REGISTROS DENTRO DE UMA TABELA */
INSERT INTO usuario(nome,login,senha) VALUES('Maria Silva','msilva','ms123');
INSERT INTO usuario(nome,login,senha) VALUES('Pedro Ramos','pramos','pr123');
INSERT INTO usuario(nome,login,senha) VALUES('Francisco Almeida','falmeida','fa123');
INSERT INTO usuario(nome,login,senha) VALUES('Laura Torres','ltorres','lt123');
INSERT INTO usuario(nome,login,senha) VALUES('Maria Soares','msoares','ms321');
INSERT INTO usuario(nome,login,senha) VALUES('Humbert Motta Ramos','hramos','hr123');
INSERT INTO usuario(nome,login,senha) VALUES('Valeria Motta Silva','vmotta','vm123');

/* MOSTRAR OS REGISTROS DENTRO DE UMA TABELA */
SELECT * FROM usuario;
SELECT login,senha FROM usuario;
SELECT * FROM usuario WHERE codigo=3;
SELECT * FROM usuario WHERE nome like 'Maria%';
SELECT * FROM usuario WHERE login like 'ms%';
SELECT * FROM usuario WHERE nome like '%Motta%';
SELECT * FROM usuario WHERE nome like '%Almeida%';

/* ALTERAR REGISTROS DE UMA TABELA */

UPDATE usuario SET nome='Pedro Rosa' WHERE nome='Pedro Ramos';
UPDATE usuario SET login='prosa' WHERE login='pramos';
UPDATE usuario SET nome='Laura Teixeira',login='lteixeira' WHERE nome='Laura Torres';

/* EXCLUIR REGISTROS DA TABELA */

DELETE FROM usuario;
DELETE FROM usuario WHERE codigo=4;
DELETE FROM usuario WHERE nome like '%Motta%';