CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
descricao VARCHAR(255),
fornecedor VARCHAR(255),
preco FLOAT,

PRIMARY KEY (id_produto)

);



INSERT INTO tb_produtos(nome,descricao,fornecedor,preco)
VALUES
("Camiseta","Estampado","Ays","550"),
("Vestido","Estampado","Hilus","100"),
("Calca","Sem estampa","Moni","200"),
("Biquini","Estampado","Moni","680"),
("Chapeu","Sem corte","Hilus","540"),
("Bone","Cortado","Moni","300"),
("Oculos","Aviador","Moni","120"),
("Maio","Estampado","Beach","100");



SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

ALTER TABLE tb_produtos
MODIFY COLUMN nome VARCHAR(100);