create database bananApp;

use bananApp;

create table sensorFisico(
idSensor int primary key auto_increment,
modelo varchar(10),
camaraInstalada int
);

create table temperatura(
idTemp int primary key auto_increment,
dataHorario datetime,
temperaturaC int
);

create table camaras_frias (
idcamara int auto_increment primary key,
identreposto int,
capacidade_caixas int,
nome varchar(90),
temperatura_min decimal(5,2),
temperatura_max decimal(5,2)
);

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(50) unique not null,
senha varchar(20)
);

