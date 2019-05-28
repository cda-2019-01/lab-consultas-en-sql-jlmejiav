-- ## 
-- ## Escriba una consulta que retorne todos los 
-- ## campos de los registros de la tabla tbl0 
-- ## con la columna ## c02 mayor o igual a 300.
-- ##
DROP DATABASE IF EXISTS lab;
CREATE DATABASE lab;
USE lab;
CREATE TABLE tbl0 (
        K0 CHAR(1),
        c01 INT,
        c02 INT,
        c03 CHAR(5),
        c04 FLOAT);
-- 
LOAD DATA LOCAL INFILE
    '/vagrant/GitHub/lab-consultas-en-sql-jlmejiav/tbl0.csv'
INTO TABLE
    tbl0
FIELDS TERMINATED BY ',';
--
SELECT * FROM tbl0 WHERE c02 >= 300;