CREATE DATABASE aula1;

USE aula1;

CREATE TABLE produtos(
	id INT IDENTITY(1,1) PRIMARY KEY,
	descricao VARCHAR(200) NOT NULL,
	valor NUMERIC(7, 2)
);

CREATE TABLE clientes(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	cpf CHAR(11) NOT NULL
);

CREATE TABLE vendas(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_cliente INT NOT NULL,
	data_venda DATE NOT NULL,
	total NUMERIC(7, 2) NOT NULL,
	FOREIGN KEY (id_cliente)
	REFERENCES clientes(id)
);

CREATE TABLE produtos_vendidos(
	id INT IDENTITY(1,1) PRIMARY KEY,
	id_venda INT NOT NULL,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	FOREIGN KEY (id_venda)
	REFERENCES vendas(id),
	FOREIGN KEY (id_produto)
	REFERENCES produtos(id)
);