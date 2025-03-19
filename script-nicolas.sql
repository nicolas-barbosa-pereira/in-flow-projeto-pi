create database inflow

use inflow;
create table empresa(
idSupermercado int primary key auto_increment,
endereco varchar(40),
cnpj varchar(18),
ativo char(10)
);

create table fluxo(
idDado int primary key auto_increment,
fluxo int not null,
horario datetime,
fkCorredor int not null);

create table cliente (
idCliente int primary key auto_increment,
nome varchar(50),
email varchar(50),
senha varchar(40)
);
create table corredor(
idCorredor int primary key auto_increment,
numeroCorredor int,
fkEmpresa int);
-- Inserindo dados na tabela empresa
INSERT INTO empresa (endereco, cnpj, ativo) VALUES 
('Rua das Flores, 123', '12.345.678/0001-90', 'ativo'),
('Avenida Central, 456', '98.765.432/0001-10', 'ativo'),
('Praça das Árvores, 789', '56.789.123/0001-50', 'inativo');

-- Inserindo dados na tabela corredor
INSERT INTO corredor (numeroCorredor, fkEmpresa) VALUES 
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(3, 3);

-- Inserindo dados na tabela cliente
INSERT INTO cliente (nome, email, senha) VALUES 
('João Silva', 'joao@email.com', 'senha123'),
('Maria Oliveira', 'maria@email.com', 'maria456'),
('Carlos Souza', 'carlos@email.com', 'abc123'),
('Ana Lima', 'ana@email.com', 'lim@2024');

-- Inserindo dados na tabela fluxo
INSERT INTO fluxo (fluxo, horario, fkCorredor) VALUES 
(15, '2025-03-18 10:30:00', 1),
(8, '2025-03-18 11:00:00', 2),
(20, '2025-03-18 12:15:00', 3),
(5, '2025-03-18 14:45:00', 4),
(12, '2025-03-18 16:00:00', 2);
