-- Criar o Banco de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
); 

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("maçã", 100, "2023-12-20", 15.00),
 ("laranja", 100, "2023-12-20", 7.00),
 ("banana", 100, "2023-12-20", 11.00),
 ("uva", 100, "2023-12-20", 15.00),
 ("melancia", 100, "2023-12-20", 28.00);

SELECT * FROM tb_produtos;

SELECT nome, CONCAT ('R$' , FORMAT (preco, 2, 'pt_BR')) AS preço
FROM tb_produtos;

SELECT NOME, DATE_FORMAT (data_validade, '%d/%m/%y') AS Data_Validade
FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

DELETE FROM tb_produtos WHERE id = 3;

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("jaboticaba", 100, "2023-12-25", 45.00);


SELECT @@collation_database;