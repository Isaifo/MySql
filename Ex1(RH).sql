CREATE DATABASE db_rh;
USE db_rh;

 CREATE TABLE tb_funcionarios(

cod_funcionario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
dt_nascimento DATE,
cpf VARCHAR(255),
cargo VARCHAR(255),
salario FLOAT NOT NULL,


PRIMARY KEY (cod_funcionario)
);

INSERT INTO tb_funcionarios (cod_funcionario, nome, dt_nascimento,cpf,cargo,salario)
VALUES
('1','Isadora Fernandes','1998-12-14','382838284','TI','3000'),
('2','Vera Lucia','1965-12-4','382838654','RH','1500'),
('3','Olavio Freire','2000-11-30','382823414','TI','1000'),
('4','Aldemar Oliveira','1998-12-14','142838284','RH','4000'),
('5','Fabiana Silva','1998-12-14','457638284','Mk','1200');

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

ALTER TABLE tb_funcionarios
MODIFY COLUMN cpf VARCHAR(11);




