CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;



CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(255),

PRIMARY KEY (id_categoria)

);

CREATE TABLE tb_produto(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(255),
preco FLOAT,
duracao VARCHAR(255),
lingua VARCHAR(255),
id_categoria INT NOT NULL,

FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria),
PRIMARY KEY (id_produto)

);


INSERT INTO tb_categoria(nome_categoria)
VALUES
("Tecnologia"),
("História"),
("Ciências"),
("Geografia"),
("Psicologia");

INSERT INTO tb_produto(nome_produto,preco,duracao,lingua,id_categoria)
VALUES
("Curso de Historia do Brasil","500","6 meses","Portugues","2"),
("Curso de Desenvolvedor","2500","3 meses","Ingles","1"),
("Curso de Anatomia","3500","4 meses","Frances","3"),
("Curso de Paises","600","1 mes","Portugues","4"),
("Curso de Psicanalise","1000","3 meses","Ingles","5");

SELECT nome_produto,preco,duracao,lingua,id_categoria FROM tb_produto
WHERE preco > 50;

SELECT nome_produto,preco,duracao,lingua,id_categoria FROM tb_produto
WHERE preco BETWEEN 3 AND 60;

SELECT nome_produto,preco,duracao,lingua,id_categoria  FROM tb_produto
WHERE nome_produto LIKE "%j%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_produto.id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_categoria = "Psicologia";



