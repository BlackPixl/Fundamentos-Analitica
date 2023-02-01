-- 
--  Sea el siguiente conjunto de tablas en una base de datos:
-- 
--    tbl0
--    ------------------------
--    K0  CHAR(1)
--    c01 INT
--    c02 INT
--    c03 CHAR(4)
--    c04 FLOAT
--        
--    tbl1
--    ------------------------
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--    tbl2
--    ------------------------
--    K1  INT,
--    c21 FLOAT,
--    c22 INT,
--    c23 DATE,
--    c24 FLOAT,
--    c25 CHAR(5)
--
--  Escriba una consulta que retorne por cada letra
--  de la columna K0, el valor máximo de la coumna c12
--  en la tabla tbl1.
--
--  Rta/
--    K0  MAX(c12)  min(C12)
--  0  A    938.16    135.80
--  1  B    999.72    283.40
--  2  C    822.81    267.42
--  3  D    756.37    317.77
--  4  E    832.44    118.77
--
--  >>> Escriba su codigo a partir de este punto <<<
--
SELECT K0,
	MAX(c12),
	MIN(c12)
FROM
    tbl1
GROUP BY k0;