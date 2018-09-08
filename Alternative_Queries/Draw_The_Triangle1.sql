/*
SQL - Alternative Queries - Draw The Triangle 1
*/

# MYSQL
SET @NUMBER:=21;
SELECT REPEAT('* ', @NUMBER:=@NUMBER-1) FROM information_schema.tables;

# ORACLE

select rpad('*', x,' *') from 
( SELECT LEVEL x FROM DUAL CONNECT BY LEVEL <= 40 Order by Level desc ) where mod(x,2) = 0;