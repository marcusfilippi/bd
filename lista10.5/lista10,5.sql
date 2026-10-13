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

