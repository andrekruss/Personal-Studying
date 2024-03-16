-- Aluno: André Beltrame Kruss
-- RA 202241790

CREATE DATABASE praticar_db;

USE praticar_db;

CREATE TABLE estados(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	sigla CHAR(2) UNIQUE NOT NULL
);

CREATE TABLE cidades(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_estado INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_estado)
	REFERENCES estados(id)
);

CREATE TABLE funcionarios(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_cidade INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	sexo CHAR(1) CHECK(sexo = 'M' or sexo = 'F' or sexo = '0') DEFAULT('M') NOT NULL,
	data_nascimento DATE NOT NULL,
	FOREIGN KEY (id_cidade)
	REFERENCES cidades(id)
);

CREATE TABLE cargos(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	salario DECIMAL(8, 2) NOT NULL CHECK(salario > 0)
);

CREATE TABLE dependentes(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_funcionario INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	sexo CHAR(1) CHECK(sexo = 'M' or sexo = 'F' or sexo = '0') DEFAULT('M') NOT NULL,
	data_nascimento DATE NOT NULL,
	tipo VARCHAR(10),
	FOREIGN KEY (id_funcionario)
	REFERENCES funcionarios(id)
	ON DELETE CASCADE
);

CREATE TABLE funcionarios_cargos(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_funcionario INT NOT NULL,
	id_cargo INT NOT NULL,
	FOREIGN KEY (id_funcionario)
	REFERENCES funcionarios(id),
	FOREIGN KEY (id_cargo)
	REFERENCES cargos(id)
);



