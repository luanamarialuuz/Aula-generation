create database rh_empresa;

create table colaboradores(
id int not null auto_increment,
nome varchar (30) not null, 
nascimento date,
sexo enum('M', 'F'),
salario varchar (250),
primary key (id)
);

insert into colaboradores values 
(DEFAULT, 'Flavia', '2001-12-25', 'F', '2500'),
(DEFAULT, 'Marcela', '1950-07-17', 'F', '1000'),
(DEFAULT, 'Marcelo', '1977-12-24', 'M', '1500'),
(DEFAULT, 'Dimitri', '1985-07-14', 'F', '1200'),
(DEFAULT, 'Maria', '2000-05-10', 'F', '3520');

-- Selecionando colaboradores com o salário maior do que 2000
 select nome, salario from colaboradores
where salario > 2000
order by nome, salario;

-- Selecionando colaboradores com o salário menor do que 2000
 select nome, salario from colaboradores
where salario < 2000
order by nome, salario;

select * from colaboradores;
describe colaboradores;