-- 1

select
`A`.`nome` as 'Nome produto',
`C`.`nome` as 'Categoria'
from `produtos` as `A`
inner join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`;

-- 2 

SELECT
 `A`.`nome` AS 'Produto',
 `A`.`preco` AS 'Preço Produto',
 `C`.`nome` AS 'Categoria'
FROM
 `produtos` as `A`
INNER join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`
where `C`.`nome` = 'Periféricos';

-- 3

SELECT
 `A`.`nome` AS 'Produto',
 `A`.`fabricante` AS 'Fabricante',
 `C`.`nome` AS 'Categoria'
FROM
 `produtos` as `A`
INNER join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`
where `C`.`nome` = 'Notebooks';

-- 4 

SELECT
 `A`.`nome` AS 'Produto',
 `A`.`preco` AS 'Preço Produto',
 `C`.`nome` AS 'Categoria'
FROM
 `produtos` as `A`
INNER join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`
where `A`.`preco` > 2000;

-- 5

select
`A`.`nome` as 'Nome produto',
`C`.`nome` as 'Categoria'
from `produtos` as `A`
left join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`;

-- 6
-- dei certo eu testei com coisa

select
`A`.`nome` as 'Nome produto',
`C`.`nome` as 'Categoria'
from `produtos` as `A`
left join
`categorias` as `C` on `A`.`idCategoria_fk` = `C`.`idCategoria`
where `A`.`idCategoria_fk` is null;

-- 7

select
`A`.`nome` as 'Categorias',
`C`.`nome` as 'Nome do produto'
from `categorias` as `A`
right join
`produtos` as `C` on `A`.`idCategoria` = `C`.`idCategoria_fk`;

-- 8
-- deu certo eu testei com coisa

select
`C`.nome as 'Nome categoria'
from `produtos` as `P`
right join `categorias` as `C` on `P`.`idCategoria_fk` = `C`.`idCategoria`
where `P`.`idProduto` is null; 