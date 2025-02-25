-- Crie um banco de dados para um e-commerce, 
-- onde o sistema trabalhará com as informações dos produtos deste e-commerce. 

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos_vendas
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
estoque INT,
valor DECIMAL(10,2) NOT NULL,
pagamento VARCHAR(255),
cor VARCHAR(255),
PRIMARY KEY (id) );

DROP TABLE tb_produtos_vendas;

INSERT INTO tb_produtos_vendas
(nome, estoque, valor, pagamento, cor) VALUES
("Mochila", 5, 900.00, "cartao crédito", "verde"),
("Eco Bag", 7, 160.00, "pix", "bege"),
("Carteira", 2, 15.50, "cartao débito", "marrom"),
("Necessair", 8, 800.00, "pix", "rosa"),
("Mala", 10, 350.00, "cartao crédito", "azul"),
("Maleta", 20, 150.00, "pix", "dourada"),
("Bag", 41, 600.00, "cartão débito", "preta"),
("Sacola", 50, 170.00, "pix", "amarelo");

SELECT * FROM tb_produtos_vendas;
SElECT * FROM tb_produtos_vendas WHERE valor >=500;
SElECT * FROM tb_produtos_vendas WHERE valor <=500;



