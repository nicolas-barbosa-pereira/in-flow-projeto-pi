create database SensorMercado;

create table usuario(
user_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(60),
senha VARCHAR(20)
);

create table supermercado(
supermercado_id INT PRIMARY KEY AUTO_INCREMENT,
nome_supermercado VARCHAR(30),
endereco VARCHAR(50),
cidade VARCHAR(50),
estado CHAR(2)
);

create table corredor(
corredor_id INT PRIMARY KEY AUTO_INCREMENT,
numero CHAR(2),
supermercado_id INT -- Foreign Key
);

create table sensor(
corredor_id INT, -- Foreign Key
quantidade_pessoas INT,
data_hora DATE,
sensor_id INT
);