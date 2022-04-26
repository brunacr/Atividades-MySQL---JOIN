CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id int(1) AUTO_INCREMENT,
tipo varchar(7) NOT NULL,
tamanho varchar(6) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Broto");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Broto");

CREATE TABLE tb_pizzas(
id int(3) AUTO_INCREMENT,
sabor varchar(100) NOT NULL,
preco decimal(8,2),
ingredientes varchar(500),
borda_recheada boolean,
categoria_id int(1),
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Muçarela", 45.00, "muçarela, tomate e azeitonas", false, 1);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Calabreza", 45.00, "calabreza e cebola", false, 1);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Portuguesa", 60.00, "muçarela, presunto, ovo, ervilha, cebola", true, 1);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Toscana", 35.00, "muçarela, calabreza e cebola", false, 2);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Morango", 70.00, "morango com chocolate", false, 3);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Abacaxi", 70.00, "abacaxi com chocolate", true, 3);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Brigadeiro", 65.00, "brigadeiro com granulados", false, 3);
INSERT INTO tb_pizzas (sabor, preco, ingredientes, borda_recheada, categoria_id) 
VALUES ("Bombom", 45.00, "chocolate coberto com bombons", false, 4);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";




