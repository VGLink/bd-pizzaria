drop database pizzaria;

create database pizzaria;

use pizzaria;

create table cliente(
	ID INT PRIMARY KEY auto_increment,
    nome VARCHAR(255) not null,
    telefone VARCHAR(13) not null,
    endereco VARCHAR(255),
    idPedidos INT
);

CREATE TABLE massa(
    ID INT PRIMARY KEY auto_increment,
    tipo VARCHAR(50)
);

CREATE TABLE borda (
    ID INT PRIMARY KEY auto_increment,
    tipo VARCHAR(50)
);

CREATE TABLE ingredientes (
    ID INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    quantidade INT
);

create table bebidas(
	ID int primary key auto_increment,
    preco float not null,
    nome varchar(50) not null,
    tipo varchar(50) not null
);

CREATE TABLE sabor (
    ID INT PRIMARY KEY auto_increment,
    tipo VARCHAR(50),
    IDIngredientes int,
    FOREIGN key (IDIngredientes) references ingredientes (ID)
);

create table pizzas(
	ID int PRIMARY KEY AUTO_INCREMENT,
    preco float not null,
    nome VARCHAR(50) NOT null,
    idmassa INT,
    idborda INT,
    idsabor INT,
    FOREIGN KEY (idmassa) REFERENCES massa(ID),
    FOREIGN KEY (idborda) REFERENCES borda(ID),
    FOREIGN KEY (idsabor) REFERENCES sabor(ID)
);

CREATE TABLE fornadas (
    ID INT PRIMARY KEY auto_increment,
    tipo VARCHAR(50),
    tempo TIME,
    idPizza INT,
    FOREIGN KEY (idPizza) REFERENCES pizzas(ID)
);

create table pedidos(
	ID int primary key auto_increment,
    quantidadePizzas INT,
    horarioPedido DATETIME,
    nome_pizzas VARCHAR(255),
    bebidas VARCHAR(255),
    quantidade_bebidas INT,
    valor_total DECIMAL(10,2),
    pizzaPedida int not null,
    FOREIGN KEY (pizzaPedida) REFERENCES pizzas(ID)
);





