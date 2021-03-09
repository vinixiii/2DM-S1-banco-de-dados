USE Musica;

INSERT INTO Permissoes (Permissao)
VALUES ('ADM'),
	   ('Comum');

INSERT INTO Usuarios (Nome, Email, Senha, IdPermissao)
VALUES ('Vin�cius', 'vinicius@gmail.com', '123', 1),
	   ('Elaine', 'elaine@gmail.com', '123456', 2);

INSERT INTO Visualizacoes (Visualizacao)
VALUES ('Dispon�vel'),
	   ('Indispon�vel');

INSERT INTO Artistas
VALUES ('Ra�a Negra'),
	   ('Dua Lipa');

INSERT INTO Albuns (Titulo, IdArtista, Minutos, Localizacao, DataDeLancamento, IdVisualizacao)
VALUES ('Future Nostalgia', 2, 30, 'Inglaterra', '27/03/2020', 1),
	   ('Ra�a Negra & Amigos', 1, 30, 'S�o Paulo', '10/05/2012', 1);

INSERT INTO Estilos (Nome)
VALUES ('Pagode'),
	   ('Pop');

INSERT INTO EstilosVinculados (IdAlbum, IdEstilo)
VALUES (1, 2),
	   (2, 1);