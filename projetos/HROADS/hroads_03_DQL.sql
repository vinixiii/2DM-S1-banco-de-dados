USE SENAI_HROADS_MANHA;

--Tarefa 6
SELECT * FROM Personagens;

--Tarefa 7
SELECT * FROM Classes;

--Tarefa 8
SELECT Nome AS Classes FROM Classes;

--Tarefa 9
SELECT * FROM Habilidades;

--Tarefa 10
SELECT COUNT(IdHabilidade) AS [Nº de Habilidades Cadastradas]
FROM Habilidades;

--Tarefa 11
SELECT IdHabilidade
FROM Habilidades
ORDER BY IdHabilidade ASC;

--Tarefa 12
SELECT * FROM TiposDeHabilidades;

--Tarefa 13
SELECT Habilidades.Nome As Habiliade, TiposDeHabilidades.Nome AS Tipo FROM Habilidades
LEFT JOIN TiposDeHabilidades
ON Habilidades.IdTipo = TiposDeHabilidades.IdTipo;

--Tarefa 14
SELECT Personagens.Nome AS Personagem, Classes.Nome AS Classe FROM Personagens
LEFT JOIN Classes
ON Personagens.IdClasse = Classes.IdClasse;

--Tarefa 15
SELECT  Personagens.Nome AS Personagem , Classes.Nome AS Classe FROM Personagens
RIGHT JOIN Classes
ON Personagens.IdClasse = Classes.IdClasse;

--Tarefa 16;
SELECT Classes.Nome AS Classe, Habilidades.Nome AS Habiliades FROM ClasseHabilidades
INNER JOIN Habilidades
ON Habilidades.IdHabilidade = ClasseHabilidades.IdHabilidade
INNER JOIN Classes
ON Classes.IdClasse = ClasseHabilidades.IdClasse;

--Tarefa 17
SELECT  Habilidades.Nome AS Habiliades, Classes.Nome AS Classe FROM ClasseHabilidades
INNER JOIN Habilidades
ON Habilidades.IdHabilidade = ClasseHabilidades.IdHabilidade
INNER JOIN Classes
ON Classes.IdClasse = ClasseHabilidades.IdClasse;

--Tarefa 18
SELECT Habilidades.Nome AS Habilidade, Classes.Nome AS Classe FROM ClasseHabilidades
LEFT JOIN Habilidades
ON Habilidades.IdHabilidade = ClasseHabilidades.IdHabilidade
LEFT JOIN Classes
ON Classes.IdClasse = ClasseHabilidades.IdClasse;