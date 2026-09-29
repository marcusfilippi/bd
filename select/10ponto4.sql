-- 1 

select `nome` as 'Nome do Tutor',
`cidade` as 'Cidade'
from `Tutores`;

-- 2

select `nome` as 'Veterinário(a)',
`especialidade` as 'Especialidade'
from `Veterinarios`;

-- 3

select `nome` as 'Nome do Animal',
`peso_kg` as 'Peso(kg)'
from `Animais`;

-- 4

select `dtConsulta` as 'Data de Consulta',
`custo` as 'Valor(R$)'
from `Consultas`;

-- 5

select `nome` 
from `Tutores` order by `nome` asc;

-- 6 

select `nome` 
from `Animais` order by `nome` desc;

-- 7

select `nome`, `peso_kg`
from `Animais` order by `peso_kg` desc;

-- 8 

select `motivo`, `custo`
from `Consultas` order by `custo` asc;

-- 9 

select `nome`, `dtNascimento`
from `Animais` order by `dtNascimento` desc; 

-- 10 

select `nome`, `dtNascimento`
from `Animais` order by `dtNascimento` asc; 

-- 11

select `motivo`, `dtConsulta`
from `Consultas` order by `dtConsulta` desc;

-- 12

select * from `Animais` order by `especie` asc, `nome` asc;

-- 13

select * from `Animais` order by `idAnimal` limit 0,5;

-- 14

select * from `Consultas` order by `idConsulta` limit 0,3;

-- 15

select * from `Tutores` order by `idTutor` limit 0,2;

-- 16

select * from `Tutores` order by `idTutor` limit 2,2;

-- 17

select `peso_kg` as 'O animal mais pesado'
from `Animais` order by `peso_kg` desc limit 0,1;

-- 18

select `motivo` as 'Motivo',
`diagnostico` as 'Diagnostico',
`custo` as 'Valor'
from `Consultas` order by `custo` desc limit 0,1;

--