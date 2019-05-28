-- ## 
-- ## Escriba una consulta que retorne por cada letra
-- ## de la columna K0, el valor promedio de la columna c21
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
CREATE TABLE tbl2 (
        K1  INT,
        c21 FLOAT,
        c22 INT,
        c23 DATE,
        c24 FLOAT,
        c25 CHAR(5));
-- 
LOAD DATA LOCAL INFILE
    '/vagrant/GitHub/lab-consultas-en-sql-jlmejiav/tbl1.csv'
INTO TABLE
    tbl1
FIELDS TERMINATED BY ',';
--
LOAD DATA LOCAL INFILE
    '/vagrant/GitHub/lab-consultas-en-sql-jlmejiav/tbl2.csv'
INTO TABLE
    tbl2
FIELDS TERMINATED BY ',';
--
SELECT K0, AVG(c21) FROM tbl1 INNER JOIN tbl2 ON tbl1.K1 = tbl2.K1 WHERE c13 > 400 GROUP BY K0;