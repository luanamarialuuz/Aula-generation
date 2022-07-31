create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2022'
);

describe cursos;
desc cliente;

-- adicionando chave primária
alter table cursos
add column idcurso int first;

-- adicionando chave primária
alter table cursos
add primary key(idcurso);

-- apagar a tabela
-- drop table cursos; 

insert into cursos values
('1', 'HTML4', 'Cursos de HTML5', '40' ,'37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40' ,'20', '2010'),
('5', 'Jarva', 'Introdução a linguagem Java', '10' , '29', '2000'),
('6', 'MySQL', 'Banco de dados MySQL', '30' , '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Dança Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40' , '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5' ,'2', '2018');

select* from cursos; 

-- modificanto linhas incorretas

update cursos 
set nome = 'HTML5'
where idcurso = '1'; 

update cursos 
set nome = 'PHP', ano = '2015'
where idcurso = '4'; 

update cursos 
set nome = 'Java', carga= '40', ano = '2015'
where idcurso = '5'
limit 1;

-- Removendo linhas
delete from cursos
where idcurso= '8';

-- removendo todas as linhas
-- truncate cursos; 

-- ordenar por nome pela coluna
select * from cursos
order by nome;
-- order by nome desc; ao contrário do alfaberto 

-- Selecionando colunas
select nome, carga, ano from cursos
order by nome;

-- selecionando linhas
select * from cursos
where ano = '2016'
order by nome;

select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= 2015
order by ano, nome;

-- selecionando Intervalos 
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

-- Selecionando Valores
 select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;

-- combinando testes
select  nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;




