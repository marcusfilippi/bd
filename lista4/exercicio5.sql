create database `empresa`;
use `empresa`;

create table `departamento`(
    `numero` int primary key,
    `nome` varchar(50)
);

create table `endereco`(
    `id` int primary key,
    `cep` int,
    `cidade` varchar(30),
    `numero` int,
    `logradouro` varchar(20),
    `bairro` varchar(30),
    `complemento` varchar(70),
    `id_dep` int,
    foreign key (`id_dep`) references `departamento`(`numero`)
);

create table `empregado` (
    `rg` int primary key,
    `salario` float,
    `nome` varchar(30),
    `sexo` varchar(10),
    `datanasc` date,
    `id_dep` int,
    `id_endereco` int,
    foreign key (`id_dep`) references `departamento`(`numero`),
    foreign key (`id_endereco`) references `endereco`(`id`)
);

create table `dependente`(
    `id` int primary key,
    `datanasc` date,
    `grauparentesco` varchar(30),
    `nome` varchar(50),
    `sexo` varchar(10),
    `id_empregado` int,
    foreign key (`id_empregado`) references `empregado`(`rg`)
);