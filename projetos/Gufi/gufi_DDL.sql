CREATE DATABASE Gufi;
GO

USE Gufi;
GO

CREATE TABLE TiposUsuarios
(
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(100) UNIQUE NOT NULL
);
GO

CREATE TABLE Usuarios
(
	IdUsuario		INT PRIMARY KEY IDENTITY,
	IdTipoUsuario	INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario),
	Nome			VARCHAR(200) NOT NULL,
	Email			VARCHAR(200) UNIQUE NOT NULL,
	Senha			VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Instituicoes
(
	IdInstituicao	INT PRIMARY KEY IDENTITY,
	Cnpj			CHAR(14) UNIQUE NOT NULL,
	NomeFantasia	VARCHAR(200) NOT NULL,
	Endereco		VARCHAR(259) UNIQUE NOT NULL
);
GO

CREATE TABLE TiposEventos
(
	IdTipoEvento	INT PRIMARY KEY IDENTITY,
	Titulo			VARCHAR(100) UNIQUE NOT NULL
);
GO

CREATE TABLE Eventos
(
	IdEvento		INT PRIMARY KEY IDENTITY,
	IdTipoEvento	INT FOREIGN KEY REFERENCES TiposEventos (IdTipoEvento),
	IdInstituicao	INT FOREIGN KEY REFERENCES Instituicoes (IdInstituicao),
	Nome			VARCHAR(250) NOT NULL,
	AcessoLivre		BIT DEFAULT(1),
	DataEvento		DATE NOT NULL,
	Descricao		VARCHAR(255)
);
GO

CREATE TABLE Presenca
(
	IdPresenca		INT PRIMARY KEY IDENTITY,
	IdUsuario		INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
	IdEvento		INT FOREIGN KEY REFERENCES Eventos (IdEvento),
	Situacao		VARCHAR(100)
);
GO