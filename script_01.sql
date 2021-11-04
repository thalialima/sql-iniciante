/*CRIA UM BANCO DE DADOS*/
CREATE DATABASE fabrica_de_sucos;

/*SELECIONA UM BANCO DE DADOS PARA USÁ-LO*/
USE fabrica_de_sucos;

/*------------------------------------*/

/* CRIA UMA TABELA NO BANCO*/

CREATE TABLE clientes(
cpf VARCHAR(11) NOT NULL,
nome VARCHAR(100),
endereco_1 VARCHAR(150),
endereco_2 VARCHAR(150),
bairro VARCHAR(50),
cidade VARCHAR(50),
estado VARCHAR(50),
cep VARCHAR(8), 
idade SMALLINT,
sexo VARCHAR(1),
limite_credito FLOAT,
volume_compra FLOAT,
primeira_compra BIT(1),
data_nascimento DATE,
PRIMARY KEY(cpf));


CREATE TABLE vendedores(
matricula VARCHAR(5),
nome VARCHAR(100),
percentual_comissao FLOAT,
PRIMARY KEY (matricula)
);


CREATE TABLE produtos(
codigo_produto VARCHAR (20),
nome VARCHAR (150),
embalagem VARCHAR (50),
tamanho VARCHAR (50),
sabor VARCHAR (50),
preco_lista FLOAT,
PRIMARY KEY (codigo_produto)
);

/*----------------------------*/
/* POPULA O BANCO DE DADOS */

INSERT INTO clientes (cpf, nome, endereco_1, endereco_2, bairro, cidade,
estado, cep, data_nascimento, idade, sexo, limite_credito, volume_compra,
primeira_compra) 
VALUES 
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Água Santa',
'Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,200000,1);


INSERT INTO vendedores(
matricula,
nome,
percentual_comissao) VALUES ('00236', 'Claudia Morais', 0.08);


INSERT INTO produtos(
codigo_produto,
nome,
embalagem,
tamanho, 
sabor,
preco_lista) VALUES (
'1037797', 'Clean - 2 Litros - Laranja', 'PET',
'2 L', 'Laranja', 16.01);

