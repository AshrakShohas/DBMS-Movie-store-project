SET SERVEROUTPUT ON
DECLARE
    counter   NUMBER(2) := 0;

BEGIN
    
    LOOP
         counter := counter + 1;
         DBMS_OUTPUT.PUT_LINE ('Counter value is ' || counter);
         EXIT WHEN counter > 10; 

    END LOOP;
END;
/