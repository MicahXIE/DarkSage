/*
SQL - Alternative Queries - Print Prime Numbers
*/


# ORACLE '/'' must add at the end of block for executing and storing the whole block.
SET SERVEROUTPUT ON;

DECLARE
    counter NUMBER;
    k NUMBER;
    output CLOB;
BEGIN
    output := '';
    FOR n in 2..1000 LOOP
    counter := 0;
    k := floor(n/2);
    FOR i in 2..k LOOP
        IF(mod(n,i)=0) THEN
          counter :=1;
        END IF;
    END LOOP;
    IF (counter = 0) THEN
       output := output||n||'&';
    END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(SUBSTR(output,0,length(output)-1));
END;
/



# MYSQL num, nu:1,1000 NOT EXISTS
# The FLOOR() function returns the largest integer value 
#that is less than or equal to a number.

SELECT GROUP_CONCAT(NUMB SEPARATOR '&')
FROM (
    SELECT @num:=@num+1 as NUMB FROM
    # infomation_schema.tables less than 1000 so need to use two tables t1, t2
    information_schema.tables t1,
    information_schema.tables t2,
    (SELECT @num:=1) tmp
) tempNum
WHERE NUMB<=1000 AND NOT EXISTS(
        SELECT * FROM (
            SELECT @nu:=@nu+1 as NUMA FROM
                information_schema.tables t1,
                information_schema.tables t2,
                (SELECT @nu:=1) tmp1
                LIMIT 1000
            ) tatata
        WHERE FLOOR(NUMB/NUMA)=(NUMB/NUMA) AND NUMA<NUMB AND NUMA>1
)

