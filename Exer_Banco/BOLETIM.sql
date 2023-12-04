 CREATE DATABASE db_sistema_notas;
 
 USE db_sistema_notas;
 
 CREATE TABLE tb_boletim (
matricula_id bigint AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
nota decimal (8,2) NOT NULL,
materia VARCHAR (255),
turma VARCHAR(255),
PRIMARY KEY (matricula_id)
);

INSERT INTO tb_boletim ( nome, nota, materia, turma)
VALUES ("Patrick Ferreira", 8, "História" , "2003"),
("Felipe Fernandes", 5, "Matemática"  , "1003"),
("Eleonora Peixoto", 8, "Português" , "703"),
("Bryan Sponja", 3, "Filosofia" , "1002"),
("Elisabeth Mershamm", 9, "Educação Física" , "2001"),
("Pedro Maia",7, "Literatura" , "6"),
("Victor Teixeira", 10, "Física Quântica" , "TEC-01");

SELECT * FROM tb_boletim;

SELECT * FROM tb_boletim WHERE nota > 7;

SELECT * FROM tb_boletim WHERE nota < 7;

UPDATE tb_boletim SET nota = 6 WHERE matricula_id = 4;


