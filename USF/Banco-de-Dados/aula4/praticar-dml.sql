-- Aluno: André Beltrame Kruss
-- RA 202241790

USE praticar_db;

-- inserindo dados na tabela Estados
INSERT INTO estados(nome, sigla)
VALUES 
	('S�o Paulo','SP'),
	('Minas Gerais', 'MG'),
	('Rio de Janeiro', 'RJ'),
	('Pernambuco', 'PE'),
	('Amazonas', 'AM'),
	('Santa Catarina', 'SC'),
	('Mato Grosso', 'MT');

-- inserindo dados na tabela cidades
INSERT INTO cidades(id_estado, nome)
VALUES 
	(1, 'Itatiba'),
	(1, 'Campinas'),
	(2, 'Belo Horizonte'),
	(1, 'Jundiai'),
	(3, 'Rio de Janeiro'),
	(3, 'Niteroi'),
	(5, 'Manaus'),
	(7, 'Cuiaba'),
	(6, 'Joinville'),
	(2, 'Ouro Preto'),
	(4, 'Recife');

-- inserindo dados na tabela funcionarios
INSERT INTO funcionarios(id_cidade, nome, sexo, data_nascimento)
VALUES 
	(1, 'Pablo', 'M', '2000-06-05'),
	(2, 'Ana', 'F', '1997-01-25'),
	(5, 'Eduardo', 'M', '2002-08-12'),
	(3, 'Maria', 'F', '2004-02-04'),
	(2, 'Antonio', 'M', '1989-07-20'),
	(8, 'Fernando', 'M', '1985-03-04'),
	(4, 'Bruna', 'F', '1991-05-15');

-- inserindo dados na tabela cargos
INSERT INTO cargos(nome, salario)
VALUES 
	('Eletricista', 3500),
	('Engenheiro', 6000),
	('Mec�nico', 3300),
	('Assistente Adm', 2000),
	('Cozinheiro', 3000),
	('Professor', 4000);

-- inserindo dados na tabela dependentes
INSERT INTO dependentes(id_funcionario, nome, sexo, tipo, data_nascimento)
VALUES 
	(1, 'Julia', 'F', 'Filha', '2018-09-09'),
	(2, 'Marcos', 'M', 'Filho', '2017-04-01'),
	(2, 'Leandro', 'M', 'Filho', '2019-10-31');
INSERT INTO dependentes(id_funcionario, nome, sexo, data_nascimento)
VALUES 
	(5, 'Luana', 'F', '2017-04-01'),
	(5, 'Renan', 'M', '2017-04-01'),
	(7, 'Julio', 'M', '2011-01-08'),
	(6, 'Hugo', 'M', '2005-11-12');

-- inserindo dados na tabela funcionarios_cargos
INSERT INTO funcionarios_cargos(id_funcionario, id_cargo)
VALUES
	(1, 1),
	(2, 4),
	(3, 2),
	(4, 3),
	(5, 5),
	(7, 2);
