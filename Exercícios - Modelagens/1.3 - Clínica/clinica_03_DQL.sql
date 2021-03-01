USE Clinica;

SELECT * FROM Donos;
SELECT * FROM TiposDePet;
SELECT * FROM Racas;
SELECT * FROM Pets;
SELECT * FROM Veterinarios;
SELECT * FROM Clinicas;

SELECT 
	IdConsulta,
    IdVeterinario,
	IdPet,
	FORMAT(Valor, 'c', 'pt-br') as Valor,
	DataDaConsulta,
	Descricao
FROM Consultas;

-- Todos os veterin�rios de uma cl�nica espec�fica
SELECT
	Clinicas.Nome AS Clinica,
	Veterinarios.Nome AS [Veterin�rio],
	CRMV
FROM Clinicas
INNER JOIN Veterinarios
ON Clinicas.IdClinica = Veterinarios.IdClinica
WHERE Clinicas.Nome LIKE '%Dr.Pol';

-- Todas as ra�as que come�am com a letra 'S'
SELECT * FROM Racas
WHERE Raca LIKE 'P%';

-- Todos os tipos de pet que terminam com a letra 'O'
SELECT * FROM TiposDePet
WHERE Tipo LIKE '%o'

-- Todos os pets e seus respectivos donos
SELECT Donos.Nome AS Dono, Pets.Nome AS Pet FROM Donos
INNER JOIN Pets
ON Donos.IdDono = Pets.IdDono;

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido