-- ## 
-- ## Escriba una consulta que retorne los primeros cinco
-- ## registros de la tabla tbl1 ordenados por fecha
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
SELECT * FROM tbl1 ORDER BY c14 LIMIT 5;