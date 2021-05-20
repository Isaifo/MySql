CREATE DATABASE db_ecommerce;
USE db_ecommerce;

 CREATE TABLE tb_produtos(

cod_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (255),
preco FLOAT,
quantidade INT,
fornecedor VARCHAR(255),

PRIMARY KEY (cod_produto)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (cod_produto, nome, preco,quantidade,fornecedor)
VALUES
('1','Celular','3000','35','Disdau'),
('2','Notebook','3500','30','DPK'),
('3','Mouse','40','35','Disdau'),
('4','Teclado','3000','35','Disdau'),
('5','SSD','200','45','JTQ'),
('6','Televisao','1500','35','Oli'),
('7','Fone de ouvido','300','56','Disdau'),
('8','Placa de video','5000','10','Disdau');

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET fornecedor = "Intermais"
Where cod_produto = 8;

SELECT * FROM tb_produtos;





