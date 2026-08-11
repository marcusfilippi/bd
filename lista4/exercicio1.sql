CREATE database `contatos`

use `contatos`;

create table `grupo`(
    `id` int primary key,
    `nome` varchar(50),
    `grauimportancia` int);

create table `contato`(
    `id` int primary key,
    `nome` varchar(50),
    `ocupacao` varchar(50),
    `endereco` varchar(100),
    `email` varchar(50),
    `id_grupo` int,
    foreign key (`id_grupo`) references `grupo`(`id`)
 );

create table `telefone`(
    `id` int primary key,
    `rotulo` varchar(30),
    `numero` int,
    `id_contato` int,
    foreign key (`id_contato`) references `contato` (`id`)
   );

