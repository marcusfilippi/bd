--1

insert into `cliente`(`cpf`,`nome`,`telefone`)
values ('111.111.111-11', 'João da Silva', '48991234567');

--2

insert into `cliente`(`cpf`,`nome`,`telefone`)
values ('222.222.222-22', 'Maria Oliveira', '48997654321');

--3

insert into `empregado`(`cpf`,`nome`,`cargo`)
values ('333.333.333-33', 'Carlos Pereira', 'Analista de Sistemas');

--4

insert into `empregado`(`cpf`,`nome`,`cargo`)
values ('444.444.444-44', 'Ana Souza', 'Gerente de Projetos');

--5

insert into `projeto`(`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`)
values ('Sistema de Vendas', 'Plataforma para e-commerce', 15000.00, '2025-12-01', '2025-11-15', '2025-09-10', '444.444.444-44', '111.111.111-11');

--6

insert into `projeto`(`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`)
values ('Aplicativo Financeiro', 'Gestão de despesas pessoais', 12000.00, '2025-10-30', '2025-10-20', '2025-09-12', '444.444.444-44', '222.222.222-22');

--7

insert into `projEmp`(`codProj`, `cpfEmpregado`, `hrTrab`)
values ('1', '333.333.333-33', '40');

--8

insert into `projEmp`(`codProj`, `cpfEmpregado`, `hrTrab`)
values ('1', '444.444.444-44', '20');

--9

insert into `projEmp`(`codProj`, `cpfEmpregado`, `hrTrab`)
values ('2', '333.333.333-33', '35');

--10

insert into `cliente`(`cpf`,`nome`,`telefone`)
values ('555.555.555-55', 'Pedro Gomes', '48999887766');

--11

insert into `empregado`(`cpf`,`nome`,`cargo`)
values ('666.666.666-66', 'Lucas Andrade', 'Desenvolvedor Backend');

--12

insert into `projeto`(`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`)
values ('Site Institucional', 'Página para empresa local', 5000.00, '2025-11-01', '2025-10-25', '2025-09-20', '444.444.444-44', '555.555.555-55');

--13

insert into `projEmp`(`codProj`, `cpfEmpregado`, `hrTrab`)
values ('3', '666.666.666-66', '50');

--14

insert into `cliente`(`cpf`,`nome`,`telefone`)
values ('777.777.777-77', 'Fernanda Lima', '48991231231');

--15

insert into `projeto`(`nome`, `descricao`, `preco`, `dtFim`, `dtEstimada`, `dtSolicitacao`, `cpfGerente`, `cpfCliente`)
values ('Controle de Estoque', 'Sistema para loja de roupas', 8000.00, '2025-12-20', '2025-12-05', '2025-09-25', '444.444.444-44', '777.777.777-77');