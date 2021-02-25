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
VALUES ('ABC-1234', 1, 1),
	   ('DEF-5678', 2, 2);

INSERT INTO Clientes (Nome, CPF)
VALUES ('Vinícius', '11111111111'),
	   ('Elaine', '22222222222');

INSERT INTO Alugueis (IdCliente, IdVeiculo, Valor, DataDeRetirada, DataDeEntrega)
VALUES (1, 2, 100, '23/02/20201', '24/02/2021'),
	   (2, 1, 150, '24/02/2021', '25/02/2021');