CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
nome_cat VARCHAR (255) NOT NULL,
estoque BIGINT,

PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco decimal(5,2),
fornecedor VARCHAR (255),
id_categoria BIGINT,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria),
PRIMARY KEY (id_produto)
);

INSERT INTO tb_categoria(nome_cat, estoque)
VALUES 
("Paracetamol",100),
("Dorflex",50),
("Advil",156),
("Ultramol",344),
("Perfume",80);


INSERT INTO tb_produto (nome, preco, fornecedor, id_categoria)
VALUES
("Perfumes", 45, "Alquimia",1),
("Remedios", 56, "Pfizer",1),
("Beleza", 78, "Shell",2),
("Perfumes", 45, "Shell",2),
("Cosmeticos", 100, "Futs",3),
("Maquiagens", 144, "Futs",3),
("Beleza", 566, "Shell",4),
("Maquiagens", 166, "Pfizer",4);

SELECT * FROM tb_produto
WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto
WHERE nome LIKE "%B";

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_cat = "Perfume";