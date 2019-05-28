-- ## 
-- ## Escriba una consulta que retorne por cada letra
-- ## de la columna K0, el valor promedio de la columna c12
-- ## en la tabla tbl1, para aquellos registros con c13 mayor
-- ## a 400.
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
SELECT K0, AVG(c12) FROM tbl1 WHERE c13 > 400 GROUP BY K0;