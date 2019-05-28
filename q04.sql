-- ## 
-- ## Escriba una consulta que retorne los campos K0 y c16
-- ## para los registros de la tabla tbl1 para los que la 
-- ## columna c16 empieza por la misma letra de la columna K0
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
SELECT K0, c16 FROM tbl1 WHERE K0 = LEFT(c16,1);