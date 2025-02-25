-- Crie um banco de dados para um serviço de RH de uma empresa,
-- onde o sistema trabalhará com as informações dos colaboradores desta empresa. 

CREATE DATABASE db_servicos_rh;

USE db_servicos_rh;

CREATE TABLE tb_colaboradores
( id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
cpf BIGINT (255),
datanascimento DATE,
salario DECIMAL (10,2),
etnia VARCHAR (255),
PRIMARY KEY (id) );

INSERT INTO tb_colaboradores
(nome, cpf, datanascimento, salario, etnia) VALUES
("Maria", 14578203641 , "1980-07-12", 1500.00, "branca"),
("João", 14869501278, "1999-06-14", 1900.00, "negro"),
("Carla", 78562498511, "1976-02-22", 3000.00, "amarelo"),
("Lucia", 14587456988, "1989-05-01", 4000.00, "negra");

UPDATE tb_colaboradores SET salario = 1500.00 WHERE id = 1;
-- DELETE FROM tb_colaboradores WHERE id = 5;

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario >= 2000;
SELECT * FROM tb_colaboradores WHERE salario <= 2000;

 