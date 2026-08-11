create database `gravadora`;

use `gravadora`;

create table `cantor` (
    `id` int primary key,
    `nome` varchar(50));

create table `musica` (
    `id` int primary key,
    `titulo` varchar(50),
    `letra` text);

create table `gravacao` (
    `id` int primary key,
    `duracao` float,
    `id_cantor` int,
    `id_musica` int,
    foreign key (`id_musica`) references `musica`(`id`),
    foreign key (`id_cantor`) references `cantor`(`id`)
);
create table `compositor` (
     `cpf` int primary key,
     `nome` varchar(50));


create table `musicacompositor` (
 	`id_musica` int,
	`id_compositor` int,
	foreign key (`id_musica`) references `musica`(`id`),
	foreign key (`id_compositor`) references `compositor`(`cpf`));
