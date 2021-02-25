USE Clinica;

INSERT INTO Donos (Nome)
VALUES ('Vinícius'),
	   ('Elaine');

INSERT INTO TiposDePet (Tipo)
VALUES ('Cachorro'),
	   ('Passarinho');

INSERT INTO Racas (Raca, IdTipo)
VALUES ('Poodle', 1),
	   ('Calopsita', 2);

INSERT INTO Pets (Nome, DataDeNascimento, IdDono, IdRaca)
VALUES ('Sophia', '24/03/2009', 2, 1),
	   ('Juca', '30/12/2010', 1, 2);

INSERT INTO Veterinarios (Nome)
VALUES ('Calitos'),
	   ('Joãozinho');

UPDATE Veterinarios SET Nome = 'Carlitos' WHERE IdVeterinario = 1;

INSERT INTO Clinicas (Nome, Endereco)
VALUES ('Clínica Veterinária do Dr.Pol', 'Rua dos Bobos, 0');

INSERT INTO Consultas (IdClinica, IdVeterinario, IdPet, Valor, DataDaConsulta)
VALUES (1, 1, 1, 250, '24/02/2021'),
	   (1, 2, 2, 250, '24/02/2021');