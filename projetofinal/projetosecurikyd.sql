create database `securikyd`;

use `securikyd`; 

create table `responsavel`(
    `nome` varchar(1000),
    `email` varchar(150),
    `cpf` varchar(11),
    `id_responsavel` int  primary key,
    `idade` int,
    `telefone` varchar(20),
    `senha` varchar (255)
);

create table `crianca`(
    `id_crianca` int primary key,
    `nome` varchar(100),
    `id_responsavel` int,
    foreign key (`id_responsavel`) references `responsavel`(`id_responsavel`)
);

create table `dispositivo`(
    `id_dispositivo` int primary key,
    `nome` varchar(100),
    `identificador` varchar(150),
    `nivel_bateria` decimal(5,2),
    `status` varchar(30),
    `id_responsavel` int,
    `id_crianca` int,
    foreign key (`id_responsavel`) references `responsavel`(`id_responsavel`),
    foreign key (`id_crianca`) references `crianca`(`id_crianca`)
);

create table `pareamento`(
    `id_pareamento` int primary key,
    `data_hora` datetime,
    `tipo_conexao` varchar(30),
    `status` varchar(30),
    `id_dispositivo_responsavel` int,
    `id_dispositivo_crianca` int,
    foreign key (`id_dispositivo_responsavel`) references `dispositivo`(`id_dispositivo`),
    foreign key (`id_dispositivo_crianca`) references `dispositivo`(`id_dispositivo`)
);

create table `localizacao`(
    `id_localizacao` int primary key,
    `latitute` decimal(10,7),
    `longitude` decimal(10,7),
    `data_hora` datetime,
    `velocidade` decimal(8,2),
    `id_crianca` int, 
    `id_dispositivo` int,
    foreign key (`id_crianca`) references `crianca`(`id_crianca`),
    foreign key (`id_dispositivo`) references `dispositivo`(`id_dispositivo`)
);

create table `notificacao`(
    `id_notificacao` int primary key,
    `tipo` varchar(50),
    `mensagem` text,
    `data_hora` datetime,
    `status` varchar(30),
    `id_crianca` int,
    `id_responsavel` int,
    foreign key (`id_crianca`) references `crianca`(`id_crianca`),
    foreign key (`id_responsavel`) references `responsavel`(`id_responsavel`)
);

insert into `responsavel`
(nome, email, cpf, id_responsavel, idade, telefone, senha)
values
('Ana Souza', 'ana@email.com', '00000000001', 1, 35, '48999990001', 'HASH_TESTE_001'),
('Bruno Martins', 'bruno@email.com', '00000000002', 2, 42, '48999990002', 'HASH_TESTE_002'),
('Carla Oliveira', 'carla@email.com', '00000000003', 3, 29, '48999990003', 'HASH_TESTE_003'),
('Diego Santos', 'diego@email.com', '00000000004', 4, 38, '48999990004', 'HASH_TESTE_004'),
('Elisa Ferreira', 'elisa@email.com', '00000000005', 5, 31, '48999990005', 'HASH_TESTE_005');

insert into `crianca`
(id_crianca, nome, id_responsavel)
values
(101, 'Lucas Souza', 1),
(102, 'Sofia Souza', 1),
(201, 'Miguel Martins', 2),
(301, 'Beatriz Oliveira', 3),
(302, 'Gabriel Oliveira', 3),
(401, 'Helena Santos', 4),
(501, 'Theo Ferreira', 5);

insert into `dispositivo`
(id_dispositivo, nome, identificador, nivel_bateria, status, id_responsavel, id_crianca)
values
(1001, 'Celular Ana', 'celana1', 95.50, 'Ativo', 1, null),
(1002, 'Smartwatch Lucas', 'swlucas1', 80.00, 'Ativo', 1, 101),
(1003, 'Smartwatch Sofia', 'swsofia1', 45.20, 'Ativo', 1, 102),
(2001, 'Celular Bruno', 'celbruno1', 72.00, 'Ativo', 2, null),
(2002, 'Smartwatch Miguel', 'swmiguel1', 15.50, 'Bateria baixa', 2, 201),
(3001, 'Celular Carla', 'celcarla1', 88.90, 'Ativo', 3, null),
(3002, 'Smartwatch Beatriz', 'swbea1', 65.00, 'Ativo', 3, 301),
(3003, 'Smartwatch Gabriel', 'swgab1', 0.00, 'Desligado', 3, 302),
(4001, 'Celular Diego', 'celdiego1', 100.00, 'Ativo', 4, null),
(4002, 'Smartwatch Helena', 'swhele1', 32.50, 'Ativo', 4, 401),
(5001, 'Celular Elisa', 'celelis1', 55.00, 'Ativo', 5, null),
(5002, 'Smartwatch Theo', 'swtheo1', 90.00, 'Ativo', 5, 501);

insert into `pareamento`
(id_pareamento, data_hora, tipo_conexao, status, id_dispositivo_responsavel, id_dispositivo_crianca)
values
(1, '2026-11-10 08:00:00', 'Bluetooth', 'Conectado', 1001, 1002),
(2, '2026-11-10 08:30:00', 'Bluetooth', 'Conectado', 1001, 1003),
(3, '2026-11-11 09:00:00', 'Wi-Fi', 'Conectado', 2001, 2002),
(4, '2026-11-11 10:00:00', 'Bluetooth', 'Conectado', 3001, 3002),
(5, '2026-11-11 10:30:00', 'Bluetooth', 'Desconectado', 3001, 3003),
(6, '2026-11-12 14:00:00', 'Wi-Fi', 'Conectado', 4001, 4002),
(7, '2026-11-12 15:00:00', 'Bluetooth', 'Conectado', 5001, 5002);

insert into `localizacao`
(id_localizacao, latitute, longitude, data_hora, velocidade, id_crianca, id_dispositivo)
values
(1, -28.0220000, -48.6120000, '2026-11-14 08:00:00', 0.00, 101, 1002),
(2, -28.0230000, -48.6130000, '2026-11-14 08:30:00', 5.50, 101, 1002),
(3, -28.0240000, -48.6140000, '2026-11-14 09:00:00', 3.20, 102, 1003),
(4, -28.0250000, -48.6150000, '2026-11-14 09:30:00', 0.00, 102, 1003),
(5, -28.0260000, -48.6160000, '2026-11-14 10:00:00', 4.00, 201, 2002),
(6, -28.0270000, -48.6170000, '2026-11-14 10:30:00', 7.80, 201, 2002),
(7, -28.0280000, -48.6180000, '2026-11-14 11:00:00', 2.50, 301, 3002),
(8, -28.0290000, -48.6190000, '2026-11-14 11:30:00', 0.00, 302, 3003),
(9, -28.0300000, -48.6200000, '2026-11-14 12:00:00', 6.00, 401, 4002),
(10, -28.0310000, -48.6210000, '2026-11-14 12:30:00', 3.50, 501, 5002);

insert into `notificacao`
(id_notificacao, tipo, mensagem, data_hora, status, id_crianca, id_responsavel)
values
(1, 'Localização', 'Lucas chegou à escola.', '2026-11-14 08:00:00', 'Lida', 101, 1),
(2, 'Localização', 'Sofia saiu da escola.', '2026-11-14 12:00:00', 'Enviada', 102, 1),
(3, 'Bateria', 'A bateria do dispositivo de Miguel está baixa.', '2026-11-14 09:00:00', 'Pendente', 201, 2),
(4, 'Segurança', 'Beatriz saiu da área segura.', '2026-11-14 10:00:00', 'Lida', 301, 3),
(5, 'Conexão', 'O dispositivo de Gabriel foi desconectado.', '2026-11-14 10:30:00', 'Enviada', 302, 3),
(6, 'Localização', 'Helena chegou ao destino.', '2026-11-14 11:00:00', 'Lida', 401, 4),
(7, 'Bateria', 'A bateria do dispositivo de Theo está baixa.', '2026-11-14 12:00:00', 'Enviada', 501, 5),
(8, 'Segurança', 'Lucas saiu da área segura.', '2026-11-14 13:00:00', 'Pendente', 101, 1),
(9, 'Conexão', 'Dispositivo de Miguel reconectado.', '2026-11-14 14:00:00', 'Lida', 201, 2),
(10, 'Localização', 'Gabriel chegou em casa.', '2026-11-14 15:00:00', 'Enviada', 302, 3);

-- select para ver as crianças do responsavel 3
select *  from `crianca`
where `id_responsavel` = 3;

-- select para ver os dispositivos usados pelos adultos 
select * from `dispositivo`
where `id_crianca` is null;

-- mostrar apenas as notificações relacionadas a pareamento/conexão
select * from `notificacao`
where `tipo` = 'Conexão';

-- mostrar apenas os pareamentos conectados por bluetooth
select * from `pareamento`
where `tipo_conexao` = 'Bluetooth' and `status` = 'Conectado';

-- mostrar apenas as localizações antes das 10 horas
select * from `notificacao`
where `data_hora` < '2026-11-14 10:00:00'


-- select para mostrar os pareamentos mostrando os dispositivos no pareamento inner join
select
 `A`.`id_pareamento` as 'Pareamento',
 `A`.`data_hora` as 'Data e Hora',
 `C`. `nome` as 'Dispositivo da Criança Pareado'
from
 `pareamento` as `A`
inner join
`dispositivo` as `C` on `A`.`id_dispositivo_crianca` = `C`.`id_dispositivo`;

-- select para mostrar o responsavel e suas crianças inner join
select
 `A`. 

-- select a localização da criança mostrando o nome da criança inner join

-- 