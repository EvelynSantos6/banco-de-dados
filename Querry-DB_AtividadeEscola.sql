-- Crie um banco de dados para um registro de uma escola, 
-- onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola.  

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes
(id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
nota DECIMAL(4,2),
turma INT,
data_avaliada DATE,
PRIMARY KEY (id) );

INSERT INTO tb_estudantes
(id, nome, nota, turma, data_avaliada) VALUES
(1, "Clara", 8.0, 10, "2025-02-10"),
(2, "Marcelo", 5.5, 05, "2025-02-11"),
(3, "Rafael", 9.5, 07, "2025-02-10"),
(4, "Laura", 7.0, 06, "2025-02-12"),
(5, "Paula", 10.0, 08, "2025-02-10"),
(6, "Francisco", 3.5, 02, "2025-02-13"),
(7, "Fernanda", 8.5, 05, "2025-02-11"),
(8, "Damiano", 6.0, 01, "2025-02-14");

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota >=7.0;
SELECT * FROM tb_estudantes WHERE nota <7.0;


 