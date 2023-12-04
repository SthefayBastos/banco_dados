CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE colaboradores_empresa (
matricula_id bigint AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
salario decimal (8,2) NOT NULL,
horario time,
dependentes int,
PRIMARY KEY (matricula_id)
);

INSERT INTO colaboradores_empresa ( nome, salario, horario, dependentes)
VALUES ("Fábio Oliveira", 1450, "12:00" , 2),
("Samanta Peixoto", 1800, "8:00" , 1),
("Henrique Sebastian", 2300, "18:00" , 3),
("Manoel De Assis", 1364, "12:00" , 0),
("Oliver Oliveira", 1450, "14:00" , 9);

SELECT * FROM colaboradores_empresa;

SELECT * FROM colaboradores_empresa WHERE salario > 2000;

SELECT * FROM colaboradores_empresa WHERE salario < 2000;

SELECT HORARIO, TIME_FORMAT (horario, '%H:%i') AS horário
FROM colaboradores_empresa;

UPDATE colaboradores_empresa SET dependentes = 2 WHERE matricula_id = 5;

DROP TABLE colaboradores_empresa;