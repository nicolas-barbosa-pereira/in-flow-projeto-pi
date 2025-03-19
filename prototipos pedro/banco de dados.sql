create database inFlow;
use inFlow;

create table usuarios (
    idUsuario int primary key auto_increment,
    nome varchar(40) not null,
    email varchar(45) not null unique,
    senha varchar(255) not null
);

create table mercados (
    idMercado int primary key auto_increment,
    nome varchar(40) not null
);

create table corredores (
    idCorredor int primary key auto_increment,
    idMercado int not null,
    nome varchar(10) not null,
    foreign key (idMercado) references mercados(idMercado)
);

create table fluxo_pessoas (
    idFluxo int primary key auto_increment,
    idCorredor int not null,
    quantidade int not null,
    dataHora timestamp default current_timestamp,
    foreign key (idCorredor) references corredores(idCorredor)
);

insert into usuarios (nome, email, senha) values
('João Silva', 'joao@email.com', 'dasde#2123'),
('Maria Oliveira', 'maria@email.com', 'asdasf@12321'),
('Carlos Souza', 'carlos@email.com', '1244124@123'),
('Pedro', 'pedro@email.com', '12414324'),
('Rafaela', 'rafaela@email.com', '1241234124#'),
('Jorge Matheus', 'jorge@email.com', '129481924da@'),
('Murillo', 'Murillo@email.com', '5435346'),
('Alexessandro', 'alex@email.com', '02983402'),
('Eric', 'eric@email.com', 'senhasupersecreta');

insert into mercados (nome) values
('Carrefour'),
('Walmart'),
('Extra'),
('Assaí Atacadista'),
('Pão de Açúcar'),
('Makro'),
('Atacadão'),
('BIG'),
('Bretas'),
('Guanabara');

insert into corredores (idMercado, nome) values
(1, 'A01'), (1, 'A02'), (1, 'A03'), (1, 'A04'),
(2, 'B01'), (2, 'B02'), (2, 'B03'), (2, 'B04'),
(3, 'C01'), (3, 'C02'), (3, 'C03'), (3, 'C04'),
(4, 'D01'), (4, 'D02'), (4, 'D03'), (4, 'D04'),
(5, 'E01'), (5, 'E02'), (5, 'E03'), (5, 'E04'),
(6, 'F01'), (6, 'F02'), (6, 'F03'), (6, 'F04'),
(7, 'G01'), (7, 'G02'), (7, 'G03'), (7, 'G04'),
(8, 'H01'), (8, 'H02'), (8, 'H03'), (8, 'H04'),
(9, 'I01'), (9, 'I02'), (9, 'I03'), (9, 'I04'),
(10, 'J01'), (10, 'J02'), (10, 'J03'), (10, 'J04');

insert into fluxo_pessoas (idCorredor, quantidade, dataHora) values
(1, 25, '2025-03-03 10:10:00'),
(2, 18, '2025-03-03 10:12:00'),
(3, 30, '2025-03-03 10:15:00'),
(4, 22, '2025-03-03 10:20:00'),
(5, 12, '2025-03-03 10:25:00'),
(6, 27, '2025-03-03 10:30:00'),
(7, 35, '2025-03-03 10:35:00'),
(8, 8,  '2025-03-03 10:40:00'),
(9, 20, '2025-03-03 10:45:00'),
(10, 14, '2025-03-03 10:50:00'),
(11, 19, '2025-03-03 10:55:00'),
(12, 31, '2025-03-03 11:00:00'),
(13, 22, '2025-03-03 11:05:00'),
(14, 11, '2025-03-03 11:10:00'),
(15, 28, '2025-03-03 11:15:00'),
(16, 34, '2025-03-03 11:20:00'),
(17, 25, '2025-03-03 11:25:00'),
(18, 9,  '2025-03-03 11:30:00'),
(19, 16, '2025-03-03 11:35:00'),
(20, 21, '2025-03-03 11:40:00');

select * from usuarios;
select * from mercados;
select * from corredores;
select * from fluxo_pessoas;

select * from fluxo_pessoas 
where month(dataHora) = 3 and year(dataHora) = 2025;



