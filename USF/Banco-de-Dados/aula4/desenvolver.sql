CREATE DATABASE aula4;

USE aula4;


CREATE TABLE paises(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(80) UNIQUE NOT NULL,
	sigla CHAR(2) NOT NULL
);

CREATE TABLE estados(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_pais INT,
	nome VARCHAR(50) NOT NULL,
	sigla CHAR(2) NOT NULL,
	observacao VARCHAR(250),
	FOREIGN KEY (id_pais)
	REFERENCES paises(id)
);

CREATE TABLE cidades(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_estado INT,
	nome VARCHAR(120) NOT NULL,
	FOREIGN KEY (id_estado)
	REFERENCES estados(id)
);

INSERT INTO paises(nome, sigla)
VALUES
	('Brasil', 'BR'),
	('Estados Unidos da América', 'EU'),
	('Argentina', 'AR'),
	('Italia', 'IT'),
	('Japão', 'JP');

INSERT INTO estados(id_pais, nome, sigla, observacao)
VALUES
	(1, 'São Paulo', 'SP', 'estado do sudeste'),
	(1, 'Bahia', 'BA', 'estado do nordeste'),
	(2, 'Texas', 'TX', 'cowboys');

INSERT INTO estados(id_pais, nome, sigla)
VALUES
	(1, 'Amazonas', 'AM'),
	(2, 'Florida', 'FL'),
	(2, 'California', 'CA');

INSERT INTO cidades(id_estado, nome)
VALUES
	(1, 'Campinas'),
	(2, 'Salvador'),
	(4, 'Manaus'),
	(5, 'Miami'),
	(6, 'Los Angeles'),
	(3, 'Dalas'),
	(1, 'Itatiba');

SELECT
	p.nome AS  nome_pais,
	p.sigla AS sigla_pais,
	e.nome AS nome_estado,
	e.sigla AS sigla_estado,
	c.nome as nome_cidade
FROM paises p
LEFT JOIN estados e
ON e.id_pais = p.id
LEFT JOIN cidades c
ON c.id_estado = e.id;