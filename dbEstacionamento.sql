-- Active: 1683812971260@@127.0.0.1@3306@dbestacionamento

drop database dbestacionamento;


create database dbestacionamento;

use dbestacionamento;

create table tbClientes(
codCli int auto_increment,
cpfCli varchar(14) not null,
nasc date,
sexoCli varchar(20) not null,
nomeCli varchar(60) not null,
telefoneCli varchar(14),
emailCli varchar(256) not null unique,
primary key (codCli));

create table tbVeiculos(
codVeic int not null auto_increment,
marcVeic varchar (20) not null,
modeloVeic varchar(30)not null,
placaVeic varchar(8) not null unique,
catVeic varchar(1) not null,
corVeic varchar(20)not null,
primary key (codVeic));

create table tbFuncionarios(
codFunc int not null auto_increment,
nomeFunc varchar(50) not null,
emailFunc varchar(256) not null unique,
senhaFunc varchar(30) not null unique,
primary key (codFunc));

create table tbVagas(
codVag int not null auto_increment,
vaga varchar(3) not null,
Vagdisp bit default 1 check(Vagdisp in(1,0)),
statusVag varchar (10) default 'Disponível' check(statusVag in('Disponível','Ocupado')),
primary key (codVag));

create table tbCupons(
codCup int not null auto_increment,
codCli int,
codVeic int,
codFunc int,
codVag int,
dataEntrada date,

dataSaida date,
horaEntrada time,
horaSaida time,
periodoEstimado time,
periodoTotal time,
valorEstimado decimal (9,2),
Foreign Key (codCli) REFERENCES tbClientes (codCli),
Foreign Key (codVeic) REFERENCES tbVeiculos (codVeic),
Foreign Key (codFunc) REFERENCES tbFuncionarios (codFunc),
primary key (codCup)
);

insert into tbfuncionarios (`nomeFunc`,`emailFunc`,`senhaFunc`) values ('Felipe', 'felipe.gomessan@gmail.com','1234');
insert into tbfuncionarios (`nomeFunc`,`emailFunc`,`senhaFunc`) values ('Andre', 'andre@luis.com','andre123');




insert into tbvagas (vaga) values ('A01');
insert into tbvagas (vaga) values ('A02');
insert into tbvagas (vaga) values ('A03');
insert into tbvagas (vaga) values ('A04');
insert into tbvagas (vaga) values ('A05');
insert into tbvagas (vaga) values ('A06');
insert into tbvagas (vaga) values ('A07');
insert into tbvagas (vaga) values ('A08');
insert into tbvagas (vaga) values ('A09');
insert into tbvagas (vaga) values ('A10');
insert into tbvagas (vaga) values ('A11');
insert into tbvagas (vaga) values ('A12');
insert into tbvagas (vaga) values ('A13');
insert into tbvagas (vaga) values ('A14');
insert into tbvagas (vaga) values ('A15');

insert into tbvagas (vaga) values ('B01');
insert into tbvagas (vaga) values ('B02');
insert into tbvagas (vaga) values ('B03');
insert into tbvagas (vaga) values ('B04');
insert into tbvagas (vaga) values ('B05');
insert into tbvagas (vaga) values ('B06');
insert into tbvagas (vaga) values ('B07');
insert into tbvagas (vaga) values ('B08');
insert into tbvagas (vaga) values ('B09');
insert into tbvagas (vaga) values ('B10');
insert into tbvagas (vaga) values ('B11');
insert into tbvagas (vaga) values ('B12');
insert into tbvagas (vaga) values ('B13');
insert into tbvagas (vaga) values ('B14');
insert into tbvagas (vaga) values ('B15');

insert into tbvagas (vaga) values ('C01');
insert into tbvagas (vaga) values ('C02');
insert into tbvagas (vaga) values ('C03');
insert into tbvagas (vaga) values ('C04');
insert into tbvagas (vaga) values ('C05');
insert into tbvagas (vaga) values ('C06');
insert into tbvagas (vaga) values ('C07');
insert into tbvagas (vaga) values ('C08');
insert into tbvagas (vaga) values ('C09');
insert into tbvagas (vaga) values ('C10');
insert into tbvagas (vaga) values ('C11');
insert into tbvagas (vaga) values ('C12');
insert into tbvagas (vaga) values ('C13');
insert into tbvagas (vaga) values ('C14');
insert into tbvagas (vaga) values ('C15');

select * from tbVagas; 