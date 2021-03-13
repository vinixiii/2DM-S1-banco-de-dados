USE Gufi;
GO

INSERT INTO TiposUsuarios (Titulo)
VALUES ('Administrador'),
	   ('Comum');
GO

INSERT INTO Usuarios (IdTipoUsuario, Nome, Email, Senha)
VALUES (1, 'Administrador', 'adm@email.com', '123'),
	   (2, 'Caique', 'caique@email.com', 'caique123'),
	   (2, 'Saulo', 'saulo@email.com', 'saulo123');
GO

INSERT INTO Instituicoes (Cnpj, NomeFantasia, Endereco)
VALUES ('12345678912345', 'Escola SENAI de Informática', 'Al. Barão de Limeira, 538')
GO

INSERT INTO TiposEventos (Titulo)
VALUES ('C#'),
	   ('ReactJs'),
	   ('SQL');
GO

INSERT INTO Eventos (IdTipoEvento, IdInstituicao, Nome, AcessoLivre, DataEvento, Descricao)
VALUES (1, 1, 'POO', 1, '07/04/2021', 'Conceitos sobre os pilares da POO'),
	   (2, 1, 'Ciclo de vida', 0, '08/04/2021', 'Como utilizar os ciclos de vida com ReactJs'),
	   (3, 1, 'Instrodução ao SQL', 1, '09/04/2021', 'Comandos básicos utilizando SQL Server');
GO

INSERT INTO Presenca (IdUsuario, IdEvento, Situacao)
VALUES (2, 2, 'não confirmada'),
	   (2, 3, 'confirmada'),
	   (3, 1, 'confirmada');
GO