/*
SQL - Alternative Queries - Draw The Triangle 2
*/

# MYSQL
SET @NUMBER:=0;
SELECT REPEAT('* ', @NUMBER:=@NUMBER+1) FROM information_schema.tables LIMIT 20;

# ORACLE

select rpad('*', x,' *') from 
( SELECT LEVEL x FROM DUAL CONNECT BY LEVEL <= 40 Order by Level) where mod(x,2) = 0;