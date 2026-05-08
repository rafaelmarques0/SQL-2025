CREATE DATABASE marinha;
USE marinha;

CREATE TABLE marinheiro (
N_Marinheiro INT PRIMARY KEY,
Nome_Marinheiro VARCHAR(50),
Grau INT,
Idade INT
);

CREATE TABLE barco (
N_barco INT PRIMARY KEY,
Nome_barco VARCHAR(50),
cor VARCHAR(20)
);

CREATE TABLE reservas (
N_barco INT,
N_Marinheiro INT,
Data_reserva DATE,
FOREIGN KEY (N_Marinheiro) REFERENCES marinheiro(N_Marinheiro),
FOREIGN KEY (N_barco) REFERENCES barco(N_barco)
);

INSERT INTO marinheiro 
VALUES
(001,"Paulo",5,36),
(002,"Luis",8,27),
(003,"Marco",6,35),
(004,"Rafael",10,45),
(005,"henrique",7,35),
(006,"Manuel",10,46);

INSERT INTO barco 
VALUES
(100,"Lua","Branco"),
(200,"Interlago","Verde"),
(300,"Sol","Amarelho"),
(400,"Terra","Castanho"),
(500,"Saturno","Azul"),
(600,"Jupiter","vermelho");

INSERT INTO reservas 
VALUES
(100,001,'2000-01-01'),
(200,001,'2000-02-05'),
(100,005,'2000-02-05'),
(400,003,'2000-05-17'),
(600,006,'2000-03-15'),
(500,004,'2000-08-20');

SELECT * FROM reservas;

-- EXERCICIO--







