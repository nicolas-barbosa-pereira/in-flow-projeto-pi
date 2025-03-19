CREATE DATABASE IF NOT EXISTS InFlow;
USE InFlow;

-- Criando a tabela Cliente
CREATE TABLE Cliente (
	idMercado INT AUTO_INCREMENT PRIMARY KEY, 
    mercado VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criando a tabela Gráficos
CREATE TABLE Fluxo (
    idCorredor INT PRIMARY KEY AUTO_INCREMENT,
    fluxo_clientes INT NOT NULL,
    horario TIME NOT NULL,
    idMercado INT NOT NULL
);

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (mercado, email, senha) VALUES
('Mercado Central', 'contato@mercadocentral.com', 'senha123'),
('Super Compras', 'suporte@supercompras.com', 'compras2024'),
('Econômico Express', 'atendimento@economicoexpress.com', 'express789');

-- Inserindo dados na tabela Fluxo
INSERT INTO Fluxo (corredor, fluxo_clientes, horario, idMercado) VALUES
(35, '10:30:00', 1),
(50, '11:15:00', 1),
(20, '12:45:00', 2),
(40, '14:00:00', 2),
(60, '16:30:00', 3);

