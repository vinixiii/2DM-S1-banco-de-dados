USE Clinica;

INSERT INTO Donos (Nome)
VALUES ('Vin�cius'),
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
	   ('Jo�ozinho');

UPDATE Veterinarios SET Nome = 'Carlitos' WHERE IdVeterinario = 1;

INSERT INTO Clinicas (Nome, Endereco)
VALUES ('Cl�nica Veterin�ria do Dr.Pol', 'Rua dos Bobos, 0');

INSERT INTO Consultas (IdVeterinario, IdPet, Valor, DataDaConsulta, Descricao)
VALUES (1, 1, 250, '24/02/2021', 'Ultrassom realizado'),
	   (2, 2, 250, '24/02/2021', 'Exame de sangue realizado');

UPDATE Veterinarios
SET CRMV = '123456789'
WHERE IdVeterinario = 1;

UPDATE Veterinarios
SET CRMV = '987654321'
WHERE IdVeterinario = 2;

UPDATE Veterinarios
SET IdClinica = '1'
WHERE IdVeterinario = 1;

UPDATE Veterinarios
SET IdClinica = '1'
WHERE IdVeterinario = 2;