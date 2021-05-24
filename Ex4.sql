CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
nome_cat VARCHAR (255) NOT NULL,
estoque BIGINT,

PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
id_produto BIGINT AUTO_INCREMENT,
nome_fruta VARCHAR (255) NOT NULL,
cor VARCHAR(255) NOT NULL,
preco decimal(5,2),
id_categoria BIGINT,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria),
PRIMARY KEY (id_produto)
);


INSERT INTO tb_categoria(nome_cat, estoque)
VALUES
("Acidas",100),
("Oleaginosas",100),
("Doces",60),
("Semiaridas",49),
("hiper-hidricas",100);

INSERT INTO tb_produto(nome_fruta, cor, preco, id_categoria)
VALUES
("Morango", "Vermelho", 4, 1),
("Maça", "Vermelho", 5, 1),
("Melancia", "Vermelho", 6, 2),
("Banana", "Amarelo", 8, 3),
("Jabuticaba", "Vermelha", 10, 3),
("Melao", "Amarelo", 8, 4),
("Kiwi", "Marrom", 8, 5),
("Pera", "Verde", 10, 5);

SELECT * FROM tb_produto;


SELECT nome_fruta, cor, preco FROM tb_produto
WHERE preco > 50;

SELECT nome_fruta, cor, preco FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT nome_fruta, preco FROM tb_produto
WHERE nome_fruta LIKE "%C%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;


SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_cat = "Doces";