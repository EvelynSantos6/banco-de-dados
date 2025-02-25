-- bloco de comandos - Query
CREATE DATABASE db_quitanda;

CREATE DATABASE db_escola_evelyn;

USE db_quitanda;

USE db_escola_evelyn;

-- ID = chave primária = dado unico 
-- colunas objetos, não podem ter - + Ç 
CREATE TABLE tb_produtos
( id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL,
PRIMARY KEY (id) );

INSERT INTO tb_produtos 
(nome, quantidade, datavalidade, preco) VALUES 
("banana",1200,"2025-02-26",10.0);

-- retornar dados da tabela
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco) VALUES 
("Abacate", 400, "2025-02-27", 15.0),
("Goiaba", 550, "2025-02-26", 10.0),
("Melancia", 40, "2025-02-28", 25.0);

-- não funciona colocar um dado como not null e não especificar ele na tabela

-- formas diferente do uso do SELECT
SELECT nome FROM tb_produtos; -- apenas retorna os nomes.
SELECT nome, preco FROM tb_produtos; -- retorna dois dados.
SELECT nome AS "Nome do Produto", preco AS "Preço" FROM tb_produtos; -- AS = apelido do nome, "" para caractere especial

-- retornar apenas uma linha ou as linhas correspondentes a um critério
SELECT * FROM tb_produtos WHERE id = 6; -- Where retorna um criterio
SELECT * FROM tb_produtos WHERE preco <=10.0; -- <= maior ou igual
SELECT * FROM tb_produtos WHERE preco <> 10.0; -- <> diferente
SELECT * FROM tb_produtos WHERE preco <> 10.0 AND quantidade = 40; -- AND adiciona mais um critério
SELECT * FROM tb_produtos WHERE preco <> 10.0 OR quantidade = 40; -- tanto quanto, diferente de 10 quanto a quant = 40
SELECT * FROM tb_produtos WHERE NOT quantidade = 40; -- não for igual a 40 - NOT = Negação 

-- ajuste na estrutura
-- campo existente
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

-- adicionar um campo
ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- atualiza a informação (dado)
UPDATE tb_produtos SET preco = 2.99; -- SET = setar modificação
UPDATE tb_produtos SET preco = 5.99 WHERE id = 1; 

-- setando a configuração do meu banco, para sem trava de segurança
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

-- deletar um campo
DELETE FROM tb_produtos WHERE id = 2;
DELETE FROM tb_produtos WHERE nome = "banana";
DELETE FROM tb_produtos WHERE nome = "goiaba" OR nome = "Abacate";

-- apaga a estrutura inteira
-- proibido apagar o SYS
DROP TABLES tb_produtos;
DROP DATABASE db_quitanda;
DROP DATABASE db_escola_evelyn;


