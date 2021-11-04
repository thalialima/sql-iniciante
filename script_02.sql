
/*ALTERA UMA TABELA ADICIONANDO MAIS UMA COLUNAS NELA*/
ALTER TABLE produto ADD COLUMN nome VARCHAR(50);

ALTER TABLE clientes ADD COLUMN (data_nascimento DATE);

ALTER TABLE vendedores ADD COLUMN (data_admissao DATE);

ALTER TABLE vendedores ADD COLUMN (de_ferias BIT(1));

/*ALTERA UMA TABELA INCLUINDO UMA CHAVE PRIMÁRIA*/
ALTER TABLE clientes ADD PRIMARY KEY (cpf);

/*ATUALIZA UM REGISTRO DA TABELA*/
UPDATE produto SET embalagem = 'Vidro', preco_lista = 2.99
WHERE produto = '1037797';

UPDATE clientes SET sexo = 'M'
WHERE cpf = '00388934512';

UPDATE vendedores SET nome = 'José Geraldo da Fonseca Júnior'
WHERE matricula = '00233';

/*APAGA UMA TABELA(SUA ESTRUTURA)*/
DROP TABLE vendedores;

DROP TABLE cliente;

/*APAGA DADOS DA TABELA*/
DELETE FROM produtos where codigo_produto = '1040107';

DELETE FROM vendedores WHERE matricula = '00233';

/*APAGA TODOS OS DADOS DA TABELA (MAS DEIXA A ESTRUTURA)*/
TRUNCATE TABLE vendedores;

