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