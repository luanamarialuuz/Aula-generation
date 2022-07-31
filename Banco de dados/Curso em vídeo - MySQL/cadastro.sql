create database cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar (30) not null, -- (constraints) A restrição NOT NULL obriga uma coluna a NÃO aceitar valores NULL
nascimento date,
sexo enum('M', 'F'),
peso decimal (5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil', -- (constraints) A restrição DEFAULT é usada para definir um valor padrão para uma coluna. O valor padrão será adicionado a todos os novos registros, se nenhum outro valor for especificado.
primary key (id)
);

insert into pessoas values 
(DEFAULT, 'Flavia', '2001-12-25', 'F', '78.78', '1.90', 'Paris'),
(DEFAULT, 'Marcela', '1950-07-17', 'F', '65.78', '1.55', 'Itália');

select * from gafanhotos;
describe gafanhotos;

-- Adicionando nova coluna
alter table pessoas
add column profissao varchar(10);

-- Removendo uma coluna
alter table pessoas
drop column profissao; 

-- escolhenoo a posição da coluna
alter table pessoas
add column profissao varchar(10) after nome;

-- colocando na primeira posiçao um atributo
alter table pessoas
add codigo int first;

-- modificando definições (tipo e constraints)
alter table pessoas
modify column profissao varchar(20);

-- renomeando coluna (tipps, nome da coluna e constraints )
alter table pessoas
change column profissao prof varchar(20);

-- Renomeando o nome da tabela 
alter table pessoas
rename to cliente;
