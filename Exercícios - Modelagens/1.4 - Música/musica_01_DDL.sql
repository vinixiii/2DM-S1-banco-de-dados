CREATE DATABASE Musica;

USE Musica;

CREATE TABLE Permissoes
(
	IdPermissao		INT PRIMARY KEY IDENTITY,
	Permissao		VARCHAR(100) NOT NULL
);

CREATE TABLE Usuarios
(
	IdUsuario		INT PRIMARY KEY,
	IdPermissao		INT FOREIGN KEY REFERENCES Permissoes (IdPermissao),
	Nome			VARCHAR(150) NOT NULL,
	Email			VARCHAR(200) NOT NULL,
	Senha			VARCHAR(100) NOT NULL
);

CREATE TABLE Artistas
(
	IdArtista		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(150) NOT NULL,
);

CREATE TABLE Visualizacoes
(
	IdVisualizacao	INT PRIMARY KEY IDENTITY,
	Visualizacao	VARCHAR(150) NOT NULL
);

CREATE TABLE Albuns
(
	IdAlbum				INT PRIMARY KEY IDENTITY,
	IdArtista			INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdVisualizacao		INT FOREIGN KEY REFERENCES Visualizacoes (IdVisualizacao),
	Titulo				VARCHAR(200) NOT NULL,
	DataDeLancamento	DATE NOT NULL,
	Localizacao			VARCHAR(250) NOT NULL,
	Minutos				INT	NOT NULL
);

CREATE TABLE Estilos
(
	IdEstilo	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(150) NOT NULL
);

CREATE TABLE EstilosVinculados
(
	IdAlbum		INT FOREIGN KEY REFERENCES Albuns (IdAlbum),
	IdEstilo	INT FOREIGN KEY REFERENCES Estilos (IdEstilo),
);