-- ## 
-- ## Escriba una consulta que retorne el registro
-- ## con el menor valor en la columna c21 de la 
-- ## tabla tbl2.
-- ##
DROP DATABASE IF EXISTS lab;
CREATE DATABASE lab;
USE lab;
CREATE TABLE tbl2 (
        K1  INT,
        c21 FLOAT,
        c22 INT,
        c23 DATE,
        c24 FLOAT,
        c25 CHAR(5));
-- 
LOAD DATA LOCAL INFILE
    '/vagrant/GitHub/lab-consultas-en-sql-jlmejiav/tbl2.csv'
INTO TABLE
    tbl2
FIELDS TERMINATED BY ',';
--
SELECT * FROM tbl2 WHERE c21 = ( SELECT MIN(c21) FROM tbl2);