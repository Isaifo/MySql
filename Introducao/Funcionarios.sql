CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionarios(
id_funcionario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
sobrenome VARCHAR(255),
email VARCHAR(255),
salario float,

PRIMARY KEY (id_funcionario)

);

INSERT INTO tb_funcionarios(nome,sobrenome,email,salario)
VALUES
("Isadora","Fernandes","isa@gmail.com","3000"),
("Vinicius","Estadio","vini@hotmail.com","1500"),
("Otavio","Costa","otavio@gmail.com","3500"),
("Manuela","Medeiros","manu@hotmail.com","4000"),
("Lucas","Sanches","lulu@gmail.com","3000");

SELECT * FROM tb_funcionarios
WHERE salario > 2000;

SELECT * FROM tb_funcionarios
WHERE salario < 2000;

UPDATE tb_funcionarios
SET salario = 5000
WHERE id_funcionario = 2;