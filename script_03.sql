/*CONSULTAS*/

/*RECUPERA TODOS OS REGISTROS DA TABELA*/
SELECT * FROM produtos;

SELECT * FROM vendedores;

SELECT * FROM clientes;

/*CONSULTAS COM VÁRIOS REGISTROS*/
SELECT cpf, nome FROM clientes LIMIT 5;

SELECT cpf AS cpf_cliente FROM clientes;

SELECT nome, sexo, endereco1, cpf FROM clientes;

SELECT nome, matricula FROM vendedores;

/*CONSULTA POR IDADE*/
SELECT * FROM clientes WHERE idade <> 22;

/*CONSULTA POR NOME*/
SELECT * FROM clientes WHERE nome > 'Fernando Cavalcante';

/*CONSULTA POR PREÇO*/
SELECT * FROM produtos WHERE preco_lista > 16.008;

SELECT * FROM vendedores WHERE percentual_comissao > 0.1;

/*CONSULTAS POR DATA*/

SELECT * FROM clientes WHERE data_nascimento > '1995-01-13';

SELECT * FROM clientes WHERE YEAR(data_nascimento) = 1995;

SELECT * FROM clientes WHERE MONTH(data_nascimento) = 10;

SELECT * FROM vendedores WHERE YEAR(data_nascimento) >= 2016;

/*CONSULTA POR FAIXA DE PREÇO*/
SELECT * FROM produtos WHERE preco_lista BETWEEN 16.007 AND 16.009;

SELECT * FROM produtos WHERE preco_lista BETWEEN 16.007 AND 16.009;

SELECT * FROM produtos WHERE preco_lista >= 16.007 AND preco_lista <= 16.009;

/*OUTRAS CONSULTAS*/ 

SELECT * FROM clientes WHERE cidade = 'Rio de Janeiro';

SELECT * FROM vendedores WHERE nome = 'Claudia Morais';

SELECT * FROM clientes WHERE idade >= 22 AND idade <= 25 AND sexo = 'M';

SELECT * FROM clientes WHERE cidade = 'Rio de Janeiro' OR bairro = 'Jardins';

SELECT * FROM clientes WHERE (idade >= 22 AND idade <= 25 AND sexo = 'M') OR (cidade = 'Rio de Janeiro');

SELECT * FROM vendedores WHERE de_ferias = 1 AND YEAR(data_admissao) < 2016;
