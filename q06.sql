-- ## 
-- ## Escriba una consulta que retorne todos los campos de 
-- ## la tabla tbl1 ordenada por fecha (c14) para los 
-- ## registros con K0 igual a A
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
SELECT * FROM tbl1 WHERE K0 = 'A' ORDER BY c14;