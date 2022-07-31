CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255),
nomedojogo varchar(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
fraqueza VARCHAR(255),
idade INT,
arma VARCHAR(255),
categoria_id BIGINT,
FOREIGN KEY(categoria_id)REFERENCES tb_classes(id)
);

-- Adicionando nova coluna
alter table tb_personagens
add column ataque int;

alter table tb_personagens
add column defesa int;

SELECT * FROM tb_classes;
INSERT INTO tb_classes(categoria) VALUES ("BARBIE"),("SEREIA"),("KEN"),("POLICIA"), ("LADRAO");

SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(nome, fraqueza, idade, arma, categoria_id)VALUES("Catenga","Mãos Pequenas", 400," Pau de Madeira, 1");
INSERT INTO tb_personagens(nome, fraqueza, idade, arma, categoria_id)VALUES("Varzeano","Cachorro Quente", 58," Sabre de Luz, 8");
INSERT INTO tb_personagens(nome, fraqueza, idade, arma, categoria_id, ataque, defesa)VALUES("Iburense","equilibrio", 26," matauma", 7, 5000, 9000);
INSERT INTO tb_personagens(nome, fraqueza, idade, arma, categoria_id, ataque, defesa)VALUES("Recifense","medo", 30," pistola", 10, 1000, 900);

SELECT * FROM tb_personagens WHERE ataque >2000; 
SELECT * FROM tb_personagens WHERE defesa BETWEEN 100 AND 2000; 
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.categoria_id = tb_classes.id WHERE tb_classes.id =2 ;
