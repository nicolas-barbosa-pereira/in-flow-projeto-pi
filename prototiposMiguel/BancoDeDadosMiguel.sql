-- Criando o banco de dados "inFlow"
CREATE DATABASE inFlow;

-- Selecionando o banco de dados "inFlow" para uso
USE inFlow;

-- Criando a tabela "empresa", que armazena informações dos supermercados
CREATE TABLE empresa(
    idSupermercado INT PRIMARY KEY AUTO_INCREMENT,-- Identificador único do supermercado
    endereco VARCHAR(40),-- Endereço do supermercado
    cnpj VARCHAR(20),-- CNPJ do supermercado
    nome VARCHAR(30)-- Nome do supermercado
);

-- Criando a tabela "cliente", que armazena informações dos clientes
CREATE TABLE cliente(
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,-- Identificador único do cliente
    nome VARCHAR(50),-- Nome do cliente
    email VARCHAR(50),-- E-mail do cliente
    senha VARCHAR(40)-- Senha do cliente
);

-- Criando a tabela "corredor", que armazena os corredores de cada supermercado
CREATE TABLE corredor(
    idCorredor INT PRIMARY KEY AUTO_INCREMENT,  -- Identificador único do corredor
    numeroCorredor INT-- Número do corredor dentro do supermercado
);

-- Criando a tabela "ativação", que registra quando alguém passou pelo sensor
CREATE TABLE sensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do dado de fluxo
    ativacao INT NOT NULL,                    -- Recebe informação quando alguém passar pelo sensor
    horario DATETIME                      -- Data e hora em que o fluxo foi registrado
);

-- Inserindo dados na tabela "empresa"
INSERT INTO empresa (endereco, cnpj, nome) VALUES 
('Rua das Flores, 123', '12.345.678/0001-90', 'Supermercado Boa Compra'),
('Av. Paulista, 1000', '98.765.432/0001-10', 'Supermercado Econômico'),
('Rua Central, 50', '11.222.333/0001-44', 'Supermercado Popular');

-- Inserindo dados na tabela "cliente"
INSERT INTO cliente (nome, email, senha) VALUES 
('João Silva', 'joao.silva@gmail.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@gmail.com', 'minhasenha'),
('Carlos Santos', 'carlos.santos@hotmail.com', 'senhaSegura');

-- Inserindo dados na tabela "corredor"
INSERT INTO corredor (numeroCorredor) VALUES 
(1),
(2),
(3),
(4),
(5);

-- Inserindo dados na tabela "sensor"
INSERT INTO sensor (ativacao, horario) VALUES 
(1, '2024-03-18 08:30:00'),
(1, '2024-03-18 09:00:00'),
(1, '2024-03-18 09:45:00'),
(1, '2024-03-18 10:10:00'),
(1, '2024-03-18 11:30:00');
