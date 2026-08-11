create database `trabalho`;

use `trabalho`;

create table `disciplina` (
    `id` int primary key,
    `nome` varchar(50),
    `cargahoraria` int,
    `ano_semestre` int
);

create table `autor` (
    `matricula` int primary key,
    `nome` varchar(30),
    `email` varchar(50)
);

create table `trabalho` (
    `id` int primary key,
    `titulo` varchar(30),
    `arquivo` varchar(60),
    `datadeentrega` date,
    `nota` float,
    `id_disciplina` int,
    foreign key (`id_disciplina`) references `disciplina` (`id`)
);

create table `trabalhoautor` (
    `id_autor` int,
    `id_trabalho` int,
    foreign key (`id_autor`) references `autor` (`matricula`),
    foreign key (`id_trabalho`) references `trabalho` (`id`)
);