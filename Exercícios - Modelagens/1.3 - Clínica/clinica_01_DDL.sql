CREATE DATABASE Clinica;

USE Clinica;

CREATE TABLE Donos
(
	IdDono		INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(150) NOT NULL,
);

CREATE TABLE TiposDePet
(
	IdTipo		INT PRIMARY KEY IDENTITY,
	Tipo		VARCHAR(150) NOT NULL,
);

CREATE TABLE Racas
(
	IdRaca		INT PRIMARY KEY IDENTITY,
	IdTipo		INT FOREIGN KEY REFERENCES TiposDePet (IdTipo),
	Raca		VARCHAR(150)
);

CREATE TABLE Pets
(
	IdPet				INT PRIMARY KEY IDENTITY,
	IdDono				INT FOREIGN KEY REFERENCES Donos (IdDono),
	IdRaca				INT FOREIGN KEY REFERENCES Racas (IdRaca),
	Nome				VARCHAR(150) NOT NULL,
	DataDeNascimento	DATE NOT NULL
);

CREATE TABLE Clinicas
(
	IdClinica	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(150) NOT NULL,
	Endereco	VARCHAR(250) NOT NULL
);

CREATE TABLE Veterinarios
(
	IdVeterinario	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(150) NOT NULL,
);

CREATE TABLE Consultas
(
	IdConsulta		INT PRIMARY KEY IDENTITY,
	IdVeterinario	INT FOREIGN KEY REFERENCES Veterinarios (IdVeterinario),
	IdPet			INT FOREIGN KEY REFERENCES Pets (IdPet),
	Valor			MONEY NOT NULL,
	DataDaConsulta	DATE NOT NULL,
	Descricao		VARCHAR(300) NOT NULL
);

-- Adicionando novo campo � tabela 'Veterinarios'
ALTER TABLE Veterinarios
ADD CRMV VARCHAR(9);

-- Alterando o campo 'CRMV' para NOT NULL�
ALTER TABLE Veterinarios
ALTER COLUMN CRMV VARCHAR(9) NOT NULL;

-- Adicionando IdClinica � tabela Veterinarios
ALTER TABLE Veterinarios
ADD IdClinica INT FOREIGN KEY REFERENCES Clinicas (IdClinica);

-- � A altera��o para NOT NULL s� pode ser feita ap�s algum valor ser inserido no campo