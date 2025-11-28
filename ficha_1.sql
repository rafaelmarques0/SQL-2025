CREATE DATABASE northwind;
USE northwind;

CREATE TABLE customers(
customersID INT PRIMARY KEY,
companyname VARCHAR(20)
);

INSERT INTO customers
VALUES
(12,"Clara"),
(10,"Anfonso"),
(11,"Jorge");

-- 1 pergunta
/*apresenta a lista customersID e companyname
de ordem alfabetica*/
SELECT customersID, companyname
FROM customers
ORDER BY companyname ASC;

-- 2 pergunta
/*qual e o contacto a regiao dos clientes do mexico
  apresenta na lista customersID, companyname, contactname, region ordenada 
  por ordem alfabetica segundoa a regiao */
  ALTER TABLE customers 
  ADD contactname INT,
  ADD region VARCHAR(20),
  ADD country VARCHAR(20);
  
  INSERT INTO customers
  VALUES
  (13,"Ze",null,null,null);
  
  -- clara
  UPDATE customers
  SET contactname = 987203875,
	  region = "madrid",
      country = "espanha"
  WHERE customersID = 10;
  
  -- anfoso
   UPDATE customers
  SET contactname = 983829218,
	  region = "paris",
      country = "franca"
  WHERE customersID = 11;
  
  -- jorge
    UPDATE customers
  SET contactname = 253768434,
	  region = "lisboa",
      country = "portugal"
  WHERE customersID = 12;

-- ze
      UPDATE customers
  SET contactname = 729279179,
	  region = "novo_mexico",
      country = "mexico"
  WHERE customersID = 13;
  
-- 2,1 pessoas que sao do mexico
SELECT contactname,region,country
FROM customers
WHERE country = "mexico";

-- 2,2 mostrar customersID, companyname, contactname, region por ordem alfabetica por a regiao
SELECT customersID, companyname, contactname, region
FROM customers
ORDER BY region ASC;

-- 3 pergunta

CREATE TABLE produtos(
productID INT PRIMARY KEY,
categoryID INT,
productname VARCHAR(20),
supplierID INT,
unitsinstock INT
);

INSERT INTO produtos
VALUES 
(1,1000,"banana",101,3215),
(2,1001,"maca",103,2000),
(3,1002,"cenoura",103,3145),
(4,1003,"alface",99,3405);

-- mostra os item que estao na categoria 1 com mais de 0 em stock
SELECT productname
FROM produtos
WHERE categoryID = 1 AND unitsinstock > 0;

-- apresenta productID, productname, supplierID, unitsinstock em ordem decresente
SELECT *
FROM produtos
ORDER BY unitsinstock DESC;

-- pergunta 4

CREATE TABLE encomendas(
orderID INT PRIMARY KEY,
quantity INT,
productID INT,
FOREIGN KEY (productID) REFERENCES produtos(productID)
);

INSERT INTO encomendas
VALUES 
(10,400,1),
(21,320,2),
(5,150,3);

-- mostrar os produtos e as quantidades nas encomendas com codigo 10, 21 e 5
SELECT productID, quantity
FROM encomendas
WHERE orderID IN (10,21,5);


SELECT * FROM customers;
SELECT * FROM produtos;
SELECT * FROM encomendas;







