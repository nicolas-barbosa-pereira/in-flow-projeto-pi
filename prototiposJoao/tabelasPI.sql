create database inflow;
use inflow;

create table cliente(
	idCliente int primary key,
    nome varchar(100),
    email varchar(200),
    senha varchar(100)
);

create table empresa (
	idEmpresa int primary key,
    nome varchar(40),
    fkCliente int,
	ativo varchar(15),
	constraint ck_ativo check(ativo in('Ativo', 'Inativo')),
    constraint fk_empresa_cliente foreign key(fkCliente) references cliente(id),
	index ix_cliente_empresa(fkCliente),
);

create table supermercado(
	idSupermercado int primary key,
	endereco varchar(100),
	cnpj char(18),
    fkEmpresa int,
    constraint fk_supermercado_empresa foreign key(fkEmpresa) references empresa(id),
    index ix_supermercado_empresa(fkEmpresa)
);
    
create table corredor(
	idCorredor int primary key,
	numero int,
    fkSupermercado int,
    constraint fk_corredor_supermercado
		foreign key(fkSupermercado)
        references supermercado(idSupermercado)
);

create table dado(
	idDado int primary key,
    distancia int,
    horario datetime default current_timestamp,
    fkCorredor int,
    constraint fk_dado_corredor
		foreign key(fkCorredor)
        references corredor(idCorredor));
    
    