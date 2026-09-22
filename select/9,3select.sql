-- 1

select * from `Animais`;

-- 2

select `nome`, `email`, `cidade` from `Tutores`;

-- 3

select `nome`, `especialidade` from `Veterinarios`;

-- 4

select `motivo`, `custo` from `Consultas`;

-- 5

select * from `Animais`
where `especie` = 'Gato';

-- 6

select `nome`, `peso_kg` from `Animais`
where `peso_kg` > 20;

-- 7

select * from `Consultas`
where `custo` = 150;

-- 8

select `nome`, `dtNascimento` from `Animais`
where `dtNascimento` >= '2022-1-1';

-- 9

select `nome`, `raca` from `Animais`
where `raca` <> 'Labrador';

-- 10

select * from `Animais`
where `especie` = 'Cachorro' and `peso_kg` < 10;

-- 11

select * from `Consultas`
where `dtConsulta` >= '2025-1-1' and `dtConsulta` <= '2025-12-31';

-- 12

select * from `Animais`
where `especie` = 'Gato' or `especie` = 'Cachorro';

-- 13

select * from `Tutores`
where `cidade` = 'São Paulo' or `cidade` = 'Rio de Janeiro';

-- 14

select * from `Animais`
where (`especie` = 'Cachorro' and `peso_kg`> 30) or (`especie` = 'Gato' and `peso_kg`<5);

-- 15

select `nome`, `telefone` from `Tutores`
where `nome` like 'A%';

-- 16

select `nome`, `raca` from `Animais`
where `raca` like '%Retriever%';

-- 17

select `nome`, `email`, `cidade` from `Tutores`
where `cidade` in ('Belo Horizonte', 'Florianópolis', 'Porto Alegre');

-- 18

select `Animais` . `nome`, `Consultas` . `custo` from `Animais`
inner join `Consultas` on `Animais`.`idAnimal` = `Consultas` . `idAnimal_fk`
where `custo` between 100 and 200;

-- 19

select * from `Animais`
where `obs` is null;

-- 20

select * from `Consultas`
where `diagnostico` is not null;