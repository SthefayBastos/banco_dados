CREATE DATABASE db_pizzaria_fominha_boa;
USE db_pizzaria_fominha_boa;

CREATE TABLE tb_categorias(
id_categoria int primary key auto_increment,
tipo varchar(50), -- doce ou salgada
formato varchar(50)
);

CREATE TABLE tb_pizzas(
id bigint primary key auto_increment,
sabor varchar(100),
valor decimal(5,2),
sabor_borda varchar(50),
tamanho varchar(50),
categoria_id int,
FOREIGN KEY (categoria_id) references tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (tipo, formato)
VALUES ('doce', 'redonda'),
('doce', 'quadrada'),
('salgada', 'redonda'),
('salgada', 'quadrada'),
('salgada', 'retangular');

INSERT INTO tb_pizzas (sabor, valor, sabor_borda, tamanho, categoria_id)
VALUES ('à moda da casa', 35.00, 'catupiry', 'grande', 3), 
('chocolate', 45.00, 'prestígio', 'grande', 1),
('frango com catupiry', 55.00, 'catupiry', 'grande', 5),
('siciliana', 20.00, 'catupiry', 'broto', 3),
('toscana', 60.00, 'catupiry', 'grande', 4),
('chilena', 65.00, 'catupiry', 'grande', 5),
('banana', 25.00, 'chocolate', 'broto', 2),
('ninho com nutella', 35.00, 'doce de leite', 'grande', 1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT *
FROM tb_pizzas
WHERE sabor LIKE "%m%";

SELECT p.*, c.tipo, c.formato
FROM tb_pizzas as p
INNER JOIN tb_categorias as c
ON p.categoria_id = c.id_categoria;

SELECT p.*, c.tipo, c.formato
FROM tb_pizzas as p
INNER JOIN tb_categorias as c
ON p.categoria_id = c.id_categoria
WHERE c.tipo = 'doce'
ORDER BY valor;