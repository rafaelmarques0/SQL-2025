
USE portugal;

-- 2 altera o nome da tabela para codigo postal
RENAME TABLE cidades TO codigo_postal;

-- 3 visualizar a base de daos
SELECT * FROM codigo_postal;

-- 4 alterar o nome da columa area 
ALTER TABLE area RENAME COLUMN area TO AreaKM2;

-- 5 calcula a media da areaKM2 e de o nome a columa MediaKM
SELECT AVG(AreaKM2) 
AS MediaKM 
FROM codigo_postal;

-- 6 seleciona o nome e codigo postal das cidade cuja as area sao maiores que 80Km2
SELECT nome, codigo_postal 
FROM codigo_postal 
WHERE AreaKM2 > 80;

-- 7 indice o registo do o codigo postal e 7830
SELECT * 
FROM codigo_postal 
WHERE codigo_postal = 7830;