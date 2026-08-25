-- 1

update `cliente`
set `telefone`='48998765432'
where `cpf`='111.111.111-11';

-- 2 

update `empregado`
set `cargo`='Desenvolvedor Sênior'
where `cpf`= '333.333.333-33';

-- 3

delete from `projEmp`
where `codProj` = 3;

delete from `projeto`
where `codProj` = 3;

delete from `cliente`
where `cpf` = '555.555.555-55';

-- 4
update `projeto`
set `preco`=`preco`*1.1

-- 5

delete from `projEmp`
where `codProj`=2 and `cpfEmpregado`='333.333.333-33';

-- 6

update `projeto`
set `descricao` = concat('PROJETO LEGADO - ', `descricao`)
where `dtSolicitacao`<'2025-09-15';

-- 7

update

