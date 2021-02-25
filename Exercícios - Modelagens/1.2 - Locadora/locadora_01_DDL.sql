/*
## Comandos utilizados:
* CREATE DATABASE 'nomedodb': Cria um novo banco de dados;

* USE 'nomedodb': Acessa o banco de dados desejado;

* CREATE TABLE: Cria uma tabela;

* INT: Define o tipo do campo como INT;
* CHAR: Define o tipo do campo como CHAR;
* VARCHAR: Define tipo do campo como VARCHAR, escolhendo um limite de caracteres;

* PRIMARY KEY: Define campo como chave primária;
* FOREIGN KEY: Define campo como chave estrangeira;

* REFERENCES: Define qual campo de qual tabela será referenciado.
*/
CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE Empresas
(
	IdEmpresa	INT	PRIMARY KEY	IDENTITY,
	Nome		VARCHAR(200) NOT NULL
);

CREATE TABLE Marcas
(
	IdMarca		INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL,
);

CREATE TABLE Modelos
(
	IdModelo	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL,
	IdMarca		INT FOREIGN KEY REFERENCES Marcas(IdMarca)
);

CREATE TABLE Veiculos
(
	IdVeiculo	INT PRIMARY KEY IDENTITY,
	Placa		CHAR NOT NULL,
	IdEmpresa	INT FOREIGN KEY REFERENCES Empresas (IdEmpresa),
	IdModelo	INT FOREIGN KEY REFERENCES Modelos (IdModelo)
);

CREATE TABLE Clientes
(
	IdCliente	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(150) NOT NULL,
	CPF			CHAR NOT NULL
);

CREATE TABLE Alugueis
(
	IdAluguel		INT PRIMARY KEY IDENTITY,
	Valor			MONEY NOT NULL,
	IdVeiculo		INT FOREIGN KEY REFERENCES Veiculos (IdVeiculo),
	IdCliente		INT FOREIGN KEY REFERENCES Clientes (IdCliente),
	DataDeRetirada	DATE NOT NULL,
	DataDeEntrega	DATE NOT NULL
);