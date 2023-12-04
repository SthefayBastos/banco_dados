CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE colaboradores_empresa (
matricula_id bigint AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
salario decimal (8,2) NOT NULL,
horario int,
dependentes int,
PRIMARY KEY (matricula_id)
);

INSERT INTO colaboradores_empresa ( nome, salario, horario, dependentes)
VALUES ("Fábio Oliveira", 1450, 12 , 2),
("Samanta Peixoto", 1800, 8 , 1),
("Henrique Sebastian", 2300, 18 , 3),
("Manoel De Assis", 1364, 12 , 0),
("Oliver Oliveira", 1450, 14 , 9);

SELECT * FROM colaboradores_empresa;

SELECT * FROM colaboradores_empresa WHERE salario > 2000;

SELECT * FROM colaboradores_empresa WHERE salario < 2000;

UPDATE colaboradores_empresa SET dependentes = 2 WHERE matricula_id = 5;