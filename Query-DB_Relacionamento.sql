-- adicionamos a coluna que vai receber a chave estrangeira
ALTER TABLE tb_produtos ADD categoria_id BIGINT;

-- constraint = restiçao 
ALTER TABLE tb_produtos ADD CONSTRAINT 
fk_produtos_categorias
FOREIGN KEY (categoria_id)
REFERENCES tb_categorias(id); 

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE nome = "banana";

-- incluir o id da chave estrangeira para a chave primaria
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 3;

INSERT INTO tb_produtos
(nome, quantidade, datavalidade, preco, categoria_id) 
VALUES("Cenoura" ,500, "2023-12-15", 2.00, 4);

-- unir tabelas
SELECT * FROM 
tb_produtos INNER JOIN tb_categorias -- INNER apenas dados que tem relaçao entre eles
-- onde existe a conexao entre tabelas = tabela.coluna
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM 
tb_produtos LEFT JOIN tb_categorias -- LEFT todos os dados de produtos até os null
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM 
tb_produtos RIGHT JOIN tb_categorias -- RIGHT todos os dados de produtos até os null
ON tb_produtos.categoria_id = tb_categorias.id;