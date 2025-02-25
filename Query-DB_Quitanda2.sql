SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos ORDER BY nome ASC;
SELECT * FROM tb_produtos ORDER BY nome DESC;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("tomate", 100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.00);

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR (255) NOT NULL
    );
    
INSERT INTO tb_categorias (descricao) 
VALUES ("frutas");
INSERT INTO tb_categorias (descricao) 
VALUES  ("legumes");
INSERT INTO tb_categorias (descricao)
VALUES ("cereais");
INSERT INTO tb_categorias (descricao) 
VALUES ("verduras");
INSERT INTO tb_categorias (descricao) 
VALUES ("hortalicas");
INSERT INTO tb_categorias (descricao) 
VALUES ("temperos");

SELECT * FROM tb_categorias ORDER BY descricao ASC;
SELECT * FROM tb_categorias WHERE descricao = "cereais";
SELECT * FROM tb_categorias WHERE descricao LIKE "cer%"; 
SELECT * FROM tb_categorias WHERE descricao LIKE "%s";
SELECT * FROM tb_categorias WHERE descricao LIKE "%a%";

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco IN(5.0, 10.0, 15.0);
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 15.0; 
SELECT AVG(preco) AS "Média Preços" FROM tb_produtos;
SELECT SUM(preco) AS "Soma Total de Precos" FROM tb_produtos;
SELECT MAX(preco) AS "Valor Mais Caro" FROM tb_produtos;
SELECT MIN(preco) AS "Menor Valor" FROM tb_produtos;
SELECT Count(preco) AS "Quantidade de Linhas" FROM tb_produtos;

