CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(

cod_aluno INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255),
nota FLOAT,
turma VARCHAR(255),
serie VARCHAR(255),

PRIMARY KEY (cod_aluno)

);

SELECT * FROM tb_alunos;



INSERT INTO tb_alunos(cod_aluno,nome,nota,turma,serie)
VALUES
('1','Fernanda','10','B','3 ano'),
('2','Bruna','8','B','3 ano'),
('3','Yuri','7','A','3 ano'),
('4','Luiz','5','A','3 ano'),
('5','Renata','4','A','2 ano'),
('6','Carol','6','B','2 ano'),
('7','Maria','9','A','2 ano');

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos
SET nota ="7.5"
where cod_aluno = 5;
