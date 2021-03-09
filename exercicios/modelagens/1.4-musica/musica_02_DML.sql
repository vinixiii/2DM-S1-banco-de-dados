USE Musica;

INSERT INTO Permissoes (Permissao)
VALUES ('ADM'),
	   ('Comum');

INSERT INTO Usuarios (Nome, Email, Senha, IdPermissao)
VALUES ('Vinícius', 'vinicius@gmail.com', '123', 1),
	   ('Elaine', 'elaine@gmail.com', '123456', 2);

INSERT INTO Visualizacoes (Visualizacao)
VALUES ('Disponível'),
	   ('Indisponível');

INSERT INTO Artistas
VALUES ('Raça Negra'),
	   ('Dua Lipa');

INSERT INTO Albuns (Titulo, IdArtista, Minutos, Localizacao, DataDeLancamento, IdVisualizacao)
VALUES ('Future Nostalgia', 2, 30, 'Inglaterra', '27/03/2020', 1),
	   ('Raça Negra & Amigos', 1, 30, 'São Paulo', '10/05/2012', 1);

INSERT INTO Estilos (Nome)
VALUES ('Pagode'),
	   ('Pop');

INSERT INTO EstilosVinculados (IdAlbum, IdEstilo)
VALUES (1, 2),
	   (2, 1);