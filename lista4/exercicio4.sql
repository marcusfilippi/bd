create database `gauchotinder`;

use `gauchotinder`;

create table `usuario`(
	`id` int primary key,
	`ctgpreferido` varchar(50),
	`cidade` varchar(50),
	`sexo` varchar(10),
	`idade` int,
	`nome` varchar(50)
);

create table `foto`(
	`id` int primary key,
	`arquivo` varchar(50),
	`formato` varchar(10),
	`id_usuario` int,
	foreign key (`id_usuario`) references `usuario`(`id`)
);
	

create table `avaliacoes`(
	`avaliacao` text,
	`id_avaliador` int,
	`id_avaliado` int,
	foreign key (`id_avaliador`) references `usuario`(`id`),
	foreign key (`id_avaliado`) references `usuario`(`id`)
);

