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

-- Todos os veterinários de uma clínica específica
SELECT
	Clinicas.Nome AS Clinica,
	Veterinarios.Nome AS [Veterinário],
	CRMV
FROM Clinicas
INNER JOIN Veterinarios
ON Clinicas.IdClinica = Veterinarios.IdClinica
WHERE Clinicas.Nome LIKE '%Dr.Pol';

-- Todas as raças que começam com a letra 'S'
SELECT * FROM Racas
WHERE Raca LIKE 'P%';

-- Todos os tipos de pet que terminam com a letra 'O'
SELECT * FROM TiposDePet
WHERE Tipo LIKE '%o'

-- Todos os pets e seus respectivos donos
SELECT Donos.Nome AS Dono, Pets.Nome AS Pet FROM Donos
INNER JOIN Pets
ON Donos.IdDono = Pets.IdDono;

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido