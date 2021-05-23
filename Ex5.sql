CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id_categoria BIGINT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(255) NOT NULL,
estoque BIGINT,

PRIMARY KEY  (id_categoria)

);



CREATE TABLE tb_produto(

id_produto BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
preco FLOAT,
fornecedor VARCHAR(255),
id_categoria BIGINT,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria),
PRIMARY KEY (id_produto)
);

INSERT INTO tb_categoria(nome_categoria, estoque)
VALUES 
("Banheiro","300"),
("Cozinha","400"),
("Sala","1000"),
("Quarto","2000"),
("Loja","3000");

INSERT INTO tb_produto(nome,preco,fornecedor,id_categoria)
VALUES
("Pia","250","Avax","1"),
("Tijolo","2500","Insc","2"),
("Espelho","60","Ati","3"),
("Chuveiro","300","Closed","4"),
("Mangueira","100","Avax","5");

SELECT nome, preco, fornecedor FROM tb_produto
WHERE preco > 50;

SELECT nome, preco, fornecedor FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT nome, preco, fornecedor FROM tb_produto
WHERE nome LIKE "%C%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_categoria = "Cozinha";



