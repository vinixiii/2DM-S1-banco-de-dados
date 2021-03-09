USE Locadora;

INSERT INTO Empresas (Nome)
VALUES ('Decolar'),
	   ('Movida');

INSERT INTO Marcas (Nome)
VALUES ('Fiat'),
	   ('Volkswagen');

INSERT INTO Modelos (Nome, IdMarca)
VALUES ('500', 1),
	   ('Up', 2);

INSERT INTO Veiculos (Placa, IdModelo, IdEmpresa)
VALUES ('ABC1234', 1, 1),
	   ('DEF5678', 2, 2);

INSERT INTO Clientes (Nome, CPF)
VALUES ('Vin�cius', '11111111111'),
	   ('Elaine', '22222222222');

INSERT INTO Alugueis (IdCliente, IdVeiculo, Valor, DataDeRetirada, DataDeEntrega)
VALUES (2, 4, 100, '23/02/2021', '24/02/2021'),
	   (3, 3, 150, '24/02/2021', '25/02/2021');