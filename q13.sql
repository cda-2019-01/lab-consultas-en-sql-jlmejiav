-- ## 
-- ## Escriba una consulta que retorne por cada letra
-- ## de la columna K0, el valor máximo de la coumna c12
-- ## en la tabla tbl1.
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
SELECT K0, MAX(c12), MIN(c12) FROM tbl1 GROUP BY K0;