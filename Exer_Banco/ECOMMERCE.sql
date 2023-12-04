CREATE DATABASE db_livraria;

USE db_livraria;

CREATE TABLE tb_livros (
sku_id bigint AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
preco decimal (8,2) NOT NULL,
tema VARCHAR (255),
autor VARCHAR(255),
PRIMARY KEY (sku_id)
);

INSERT INTO tb_livros ( nome, preco, tema, autor)
VALUES ("Terra Inabitável", 47,  "Ciência Ambientais", "David Wallace Wells"),
("Sapiens", 55, "História" , "Yuval Noah Harari"),
("E Não Sobrou Nenhum", 25, "Crime Mistério"  , "Agatha Christie"),
("Box Outlander", 940, "Mitos,lendas e Sagas" , "Diana Gabaldon"),
("Harry Potter e a Pedra Filosofal ", "49.55", "Fantasia Contemporânea" , "J.K Rowling"),
("1984", "35.99", "Política Literatura e Ficção" , "George Orwell"),
("Drácula", "85.35", "Horror Literatura e Ficção" , "Bram Stoker"),
("Coleção Jane Austen ", "87.96", "Clássico de Ficção" , "Jane Austen");

SELECT * FROM tb_livros;

SELECT * FROM tb_livros WHERE preco > 500;

SELECT * FROM tb_livros WHERE preco < 500;

SELECT nome, CONCAT ('R$' , FORMAT (preco, 2, 'pt_BR')) AS preço
FROM tb_livros;
