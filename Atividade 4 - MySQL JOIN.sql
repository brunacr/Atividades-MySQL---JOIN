CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50) NOT NULL,
nacional BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, nacional) VALUES ("Fruta", true);
INSERT INTO tb_categorias (tipo, nacional) VALUES ("Fruta", false);
INSERT INTO tb_categorias (tipo, nacional) VALUES ("Legume", true);
INSERT INTO tb_categorias (tipo, nacional) VALUES ("Legume", false);
INSERT INTO tb_categorias (tipo, nacional) VALUES ("Vegetal", true);
INSERT INTO tb_categorias (tipo, nacional) VALUES ("Vegetal", false);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
preco DECIMAL(8, 2),
validade DATE,
estacao BOOLEAN,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Maçã", 15.99, '2022-05-10', false, 1);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Banana", 21.99, '2022-04-30', true, 1);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Tâmaras", 40.99, '2022-05-15', true, 2);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Pitaya", 66.00, '2022-05-10', false, 2);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Abóbora", 20.99, '2022-05-05', false, 3);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Batata-doce", 23.00, '2022-04-30', true, 3);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Aspargo", 55.00, '2022-05-10', true, 4);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Alface", 18.99, '2022-04-28', true, 5);
INSERT INTO tb_produtos (nome, preco, validade, estacao, categoria_id) VALUES ("Endívia", 35.00, '2022-05-12', false, 6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "Fruta";


