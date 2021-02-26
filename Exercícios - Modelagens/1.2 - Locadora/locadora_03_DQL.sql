USE Locadora;

SELECT * FROM Empresas;
SELECT * FROM Marcas;
SELECT * FROM Modelos;
SELECT * FROM Veiculos;
SELECT * FROM Clientes;
SELECT * FROM Alugueis;

SELECT IdAluguel,
	   FORMAT(DataDeRetirada, 'd', 'pt-bt') AS [Data de Retirada],
	   FORMAT(DataDeEntrega, 'd', 'pt-bt') AS [Data de Entrega],
	   Clientes.Nome AS [Cliente],
	   Modelos.Nome AS [Carro],
	   FORMAT(Valor, 'c', 'pt-br') AS Valor
FROM Alugueis
LEFT JOIN Clientes
ON Alugueis.IdCliente = Clientes.IdCliente
INNER JOIN Veiculos
ON Alugueis.IdVeiculo = Veiculos.IdVeiculo
INNER JOIN Modelos
ON Veiculos.IdModelo = Modelos.IdModelo;

SELECT IdAluguel,
	   FORMAT(DataDeRetirada, 'd', 'pt-bt') AS [Data de Retirada],
	   FORMAT(DataDeEntrega, 'd', 'pt-bt') AS [Data de Entrega],
	   Clientes.Nome AS [Cliente],
	   Modelos.Nome AS [Carro],
	   FORMAT(Valor, 'c', 'pt-br') AS Valor
FROM Alugueis
LEFT JOIN Clientes
ON Alugueis.IdCliente = Clientes.IdCliente
INNER JOIN Veiculos
ON Alugueis.IdVeiculo = Veiculos.IdVeiculo
INNER JOIN Modelos
ON Veiculos.IdModelo = Modelos.IdModelo
WHERE Clientes.Nome LIKE 'Vinícius'