CREATE DATABASE folha_6;
USE folha_6;

SELECT * FROM modelo;

CREATE TABLE modelo(
	codMod INT PRIMARY KEY,
	Nome VARCHAR(10),
	Marca VARCHAR(10)
);

CREATE TABLE clientes(
	NIF INT PRIMARY KEY,
	nome VARCHAR(20),
    dtnasc DATE 
);

CREATE TABLE veiculo(
	matricula VARCHAR(8) PRIMARY KEY,
	modelo_codMod INT,
    cliente_NIF INT ,
    cor VARCHAR(10)
);

CREATE TABLE estaciona(
cod INT PRIMARY KEY,
estacionamento_Num INT,
veiculo_matricula VARCHAR(8),
dtentrada DATE,
dtsaida DATE,
hora_entrada TIME,
hora_saida TIME
);

CREATE TABLE estacionamento(
 Num INT PRIMARY KEY,
 piso INT,
 Capacidade INT
);

-- feito com clara santos
