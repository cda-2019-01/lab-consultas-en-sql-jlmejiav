-- ## 
-- ## Escriba una consulta que compute el promedio
-- ## de la columna c21 de la tabla tbl2 por ano 
-- ## (columna c23) que este ordenada por año. 
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
SELECT YEAR(c23), AVG(c21) FROM tbl2 GROUP BY YEAR(c23) ORDER BY YEAR(c23);