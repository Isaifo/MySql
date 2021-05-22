CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id_classe BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
armas VARCHAR (255),

PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
id_personagem BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
poder_ataque INT,
poder_defesa INT,
id_classe BIGINT,

FOREIGN KEY (id_classe) REFERENCES tb_classe (id_classe),
PRIMARY KEY (id_personagem)
);

INSERT INTO tb_classe (nome,armas)
VALUES 
("Animagos", "Arma de fogo"),
("Monges", "Faca"),
("Necromanonte", " Espada"),
("Guerreiro", "Espada"),
("Feiticeiros", "Lança");

INSERT INTO tb_personagem (nome, poder_ataque, poder_defesa, id_classe)
VALUES
("Isadora", 2000, 2400,1 ),
("Fernando", 3000,3000,2),
("Yuri", 5000,321,3),
("Amanda", 2000,1000,4),
("Juci", 100,200,1),
("Anibal", 100,100,2),
("Danielle", 200,100,3),
("Fabi", 3000,100,4);


SELECT * FROM tb_personagem
WHERE poder_ataque > 2000; 

SELECT * FROM tb_personagem 
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem 
WHERE nome
LIKE "%c%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe on tb_personagem.id_classe = tb_classe.id_classe;

SELECT * FROM tb_personagem 
INNER JOIN tb_classe
ON tb_personagem.id_classe = tb_classe.id_classe
WHERE tb_classe.nome = "Guerreiro";