CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes(
IDestudantes INT PRIMARY KEY,
nome VARCHAR(20),
idade INT,
data_nascimento DATE);

-- adicionar 5 regitos
INSERT INTO estudantes
VALUES
(1000,"Andre",19,'2000-02-10'),
(1001,"Maria",21,'2060-05-03'),
(1002,"Alexandre",15,'2500-12-17'),
(1003,"Vera",10,'2900-08-29'),
(1004,"Antonio",18,'2009-03-01');

SELECT * FROM estudantes;

-- acrecentar um aluno de 12 e outro com 35
INSERT INTO estudantes
VALUES
(1005,"Clara",12,'2013-11-05'),
(1006,"Raquele",35,'1990-11-05');
