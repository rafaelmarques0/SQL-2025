CREATE DATABASE armazenamento;
USE armazenamento;

CREATE TABLE produtos (
produtosID INT PRIMARY KEY,
cod_prod INT NOT NULL,
valor_unit DECIMAL(10,2) NOT NULL,
quantidade INT NOT NULL,
desconto INT
);
INSERT INTO produtos
VALUES
(1079,5,30.00,10,15),
(1080,4,10.00,12,5),
(1081,1,25.00,13,5),
(1082,2,13.50,15,5),
(1083,3,15.00,3,null),
(1084,5,30.00,6,null),
(1085,1,25.00,22,15),
(1086,3,15.00,25,20),
(1087,1,25.00,10,3),
(1088,2,13.50,10,4),
(1089,3,15.00,10,4),
(1090,5,30.00,10,1);

 SELECT * FROM produtos;

-- pergunta 1
SELECT cod_prod, valor_unit FROM produtos WHERE desconto IS NULL;

-- pergunta 2
UPDATE produtos 
SET desconto = 0 
WHERE desconto IS NULL;

-- pergunta 3
SELECT produtosID, quantidade FROM produtos WHERE desconto >10 AND desconto < 20;

-- pergunta 4

SELECT quantidade, valor_unit FROM produtos WHERE cod_prod = 2;











 -- tirar o modo seguro 
 SET SQL_SAFE_UPDATES = 0;