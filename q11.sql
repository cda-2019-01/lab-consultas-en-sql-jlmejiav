-- ## 
-- ## Escriba una consulta que retorne el total 
-- ## de registros de la tabla tbl1 para el ano
-- ## 2018
-- ##
DROP DATABASE IF EXISTS lab;
CREATE DATABASE lab;
USE lab;
CREATE TABLE tbl1 (
        K0  CHAR(1),    
        K1  INT,       
        c12 FLOAT,
        c13 INT,
        c14 DATE,
        c15 FLOAT,
        c16 CHAR(4));
-- 
LOAD DATA LOCAL INFILE
    '/vagrant/GitHub/lab-consultas-en-sql-jlmejiav/tbl1.csv'
INTO TABLE
    tbl1
FIELDS TERMINATED BY ',';
--
SELECT YEAR(c14), COUNT(c14) FROM tbl1 WHERE YEAR(c14) = 2018  GROUP BY YEAR(c14);