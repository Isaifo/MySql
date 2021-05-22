CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id_categoria BIGINT AUTO_INCREMENT,
nome_cat VARCHAR (255) NOT NULL,
tipo VARCHAR(255),

PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza(
id_pizza BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco decimal(5,2),
tamanho VARCHAR(255) NOT NULL,
tipo VARCHAR(255),
id_categoria BIGINT,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria),
PRIMARY KEY (id_pizza)
);

INSERT INTO tb_categoria (nome_cat, tipo)
VALUES 
("Salgada", "Calabresa"),
("Doce", "Queijo"),
("Doce", "Frango"),
("Salgada", "Calabresa"),
("Salgada", "Camarão");

INSERT INTO tb_pizza (nome, preco, tamanho, tipo, id_categoria)
VALUES
("Pizza de camarão", 55, "Grande", "borda recheada", 1),
("Pizza de queijo com catupiry", 60, "Extra Grande", "borda sem recheio", 2),
("Pizza de calabresa", 25, "Media", "borda recheada", 1),
("Pizza de calabreca com queijo", 40, "Broto", "borda recheada", 1),
("Pizza de cheddar", 40, "Broto", "borda sem recheio", 3),
("Pizza de mussarela", 30, "Broto", "borda recheiada", 1),
("Pizza bahiana", 60, "Médio", "borda recheiada", 1),
("Pizza portuguesa", 50, "Extra Grande", "borda sem recheio", 2);

SELECT * FROM tb_pizza
WHERE preco > 45;

SELECT * FROM tb_pizza
WHERE preco BETWEEN 29 AND 60;

SELECT * FROM tb_pizza
WHERE nome LIKE "%C%";


SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id_categoria;


SELECT * FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_categoria = "doce";