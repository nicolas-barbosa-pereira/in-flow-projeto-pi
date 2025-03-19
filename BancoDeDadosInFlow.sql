-- Criando o banco de dados "inFlow"
CREATE DATABASE inFlow;

-- Selecionando o banco de dados "inFlow" para uso
USE inFlow;

-- Criando a tabela "empresa", que armazena informações dos supermercados
CREATE TABLE empresa(
    idSupermercado INT PRIMARY KEY AUTO_INCREMENT,-- Identificador único do supermercado
    endereco VARCHAR(40),-- Endereço do supermercado
    cnpj VARCHAR(20),-- CNPJ do supermercado
    nomeFantasia VARCHAR(30),-- Nome fantasia do supermercado
    ativo CHAR(10)-- Indicador de se o supermercado está ativo ou não
);

SELECT * FROM empresa;

-- Criando a tabela "cliente", que armazena informações dos clientes
CREATE TABLE funcionario(
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,-- Identificador único do cliente
    nome VARCHAR(50),-- Nome do cliente
    email VARCHAR(50),-- E-mail do cliente
    senha VARCHAR(40),-- Senha do cliente
    fkEmpresa INT NOT NULL -- Referência ao supermercado (empresa) ao qual o cliente está associado
);

SELECT * from funcionario;

-- Criando a tabela "corredor", que armazena os corredores de cada supermercado
CREATE TABLE corredor(
    idCorredor INT PRIMARY KEY AUTO_INCREMENT,  -- Identificador único do corredor
    numeroCorredor INT,-- Número do corredor dentro do supermercado
    fkEmpresa INT NOT NULL-- Referência ao supermercado (empresa) ao qual o corredor pertence
);

SELECT * FROM corredor;

-- Criando a tabela "ativação", que registra quando alguém passou pelo sensor
CREATE TABLE ativacao(
    idAtivacao INT PRIMARY KEY AUTO_INCREMENT, -- Identificador único do dado de fluxo
    ativacao INT NOT NULL,                    -- Recebe informação quando alguém passar pelo sensor
    horario DATETIME,                      -- Data e hora em que o fluxo foi registrado
    fkCorredor INT NOT NULL                -- Referência ao corredor no qual o fluxo foi registrado
);

SELECT * FROM ativacao; 

-- Inserindo hipermercados reais
INSERT INTO empresa (idSupermercado, endereco, cnpj, nomeFantasia, ativo) 
VALUES 
(1, 'Avenida Paulista, 1000 - São Paulo', '00.111.222/0001-33', 'Extra Hipermercado', 'ativo'),
(2, 'Rua das Flores, 500 - Porto Alegre', '11.222.333/0002-44', 'Carrefour', 'ativo'),
(3, 'Praça do Comercio, 45 - Salvador', '22.333.444/0003-55', 'Atacadão', 'ativo'),
(4, 'Alameda Santos, 250 - Curitiba', '33.444.555/0004-66', 'Big Bompreço', 'ativo');

-- Inserindo funcionario
INSERT INTO funcionario (nome, email, senha, fkEmpresa) VALUES
('Carlos Silva', 'carlos.silva@email.com', 'senha123', 1),
('Mariana Souza', 'mariana.souza@email.com', 'segura456', 2),
('Rafael Lima', 'rafael.lima@email.com', 'meuacesso789', 3),
('Fernanda Castro', 'fernanda.castro@email.com', 'pass321', 4),
('André Santos', 'andre.santos@email.com', 'lojasegura654', 5);


-- Inserindo corredores das empresas
INSERT INTO empresa (endereco, cnpj, nomeFantasia, ativo) VALUES
('Av. Paulista, 1000, São Paulo - SP', '12.345.678/0001-90', 'Supermercado Reame', 'Ativo'),
('Rua das Flores, 250, Rio de Janeiro - RJ', '98.765.432/0001-10', 'Hipermercado Econômico', 'Ativo'),
('Av. Brasil, 5000, Belo Horizonte - MG', '11.222.333/0001-55', 'Maxi Supermercado', 'Ativo'),
('Rua 7 de Setembro, 99, Porto Alegre - RS', '44.555.666/0001-20', 'Super Econômico', 'Inativo'),
('Av. Goiás, 300, Goiânia - GO', '77.888.999/0001-30', 'Hiper Popular', 'Ativo');


INSERT INTO corredor (numeroCorredor, fkEmpresa) VALUES
(1, 1),
(2, 1),
(1, 2),
(3, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(3, 5);

-- tabela ativacao
INSERT INTO ativacao (ativacao, horario, fkCorredor) VALUES
(1, '2025-03-18 08:30:00', 1),
(1, '2025-03-18 09:00:00', 2),
(1, '2025-03-18 10:15:00', 3),
(1, '2025-03-18 11:45:00', 4),
(1, '2025-03-18 12:30:00', 5),
(1, '2025-03-18 14:00:00', 6),
(1, '2025-03-18 15:20:00', 7),
(1, '2025-03-18 16:50:00', 8),
(1, '2025-03-18 18:10:00', 9);

