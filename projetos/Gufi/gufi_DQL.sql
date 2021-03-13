USE Gufi;
GO

SELECT * FROM TiposUsuarios;
SELECT * FROM Usuarios;
SELECT * FROM Instituicoes;
SELECT * FROM TiposEventos;
SELECT * FROM Eventos;
SELECT * FROM Presenca;

SELECT IdUsuario, Titulo AS [Tipo de Usuário], Nome, Email FROM Usuarios
INNER JOIN TiposUsuarios
ON Usuarios.IdTipoUsuario = TiposUsuarios.IdTipoUsuario;
GO

SELECT NomeFantasia AS [Local], IdEvento, Titulo AS Tema, Nome, AcessoLivre, DataEvento, Descricao FROM Eventos
INNER JOIN TiposEventos
ON Eventos.IdTipoEvento = TiposEventos.IdTipoEvento
INNER JOIN Instituicoes
ON Eventos.IdInstituicao = Instituicoes.IdInstituicao;
GO

SELECT U.Nome [Usuário], Email, E.Nome Evento, TE.Titulo Tema, DataEvento [Data] FROM Usuarios U
INNER JOIN Presenca P
ON P.IdUsuario = U.IdUsuario
INNER JOIN Eventos E
ON P.IdEvento = E.IdEvento
INNER JOIN TiposEventos TE
ON E.IdTipoEvento = TE.IdTipoEvento;
GO

SELECT Titulo [Permissão], Nome, Email FROM Usuarios U
INNER JOIN TiposUsuarios TU
ON U.IdTipoUsuario = TU.IdTipoUsuario
WHERE Email = 'saulo@email.com' AND Senha = 'saulo';
GO