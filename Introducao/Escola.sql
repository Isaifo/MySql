CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
id_aluno INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
turma VARCHAR(255),
serie VARCHAR(255),
nota FLOAT,

PRIMARY KEY (id_aluno)

);

INSERT INTO tb_alunos(nome,turma,serie,nota)
VALUES
("Yuri","A","1 ANO","10"),
("Fred","A","1 ANO","10"),
("Lucas","B","2 ANO","8"),
("Jose","B","2 ANO","7"),
("Fernando","C","1 ANO","4"),
("Jucilene","C","2 ANO","3"),
("Eniete","D","5 ANO","10"),
("Joao","D","3 ANO","9");



SELECT * FROM tb_alunos
WHERE nota > 7;

SELECT * FROM tb_alunos
WHERE nota < 7;

ALTER TABLE tb_alunos
MODIFY COLUMN nome VARCHAR(45);