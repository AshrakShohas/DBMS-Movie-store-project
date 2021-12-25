SET SERVEROUTPUT ON
DECLARE
   counter    NUMBER(2) := 1;
   name       AUTHORS.FIRST_NAME%TYPE;
   surname    AUTHORS.FAMILY_NAME%TYPE;
  
BEGIN

   WHILE counter <= 6 
   LOOP

      SELECT first_name, family_name 
      INTO name, surname
      FROM authors
      WHERE
      id = counter;

      DBMS_OUTPUT.PUT_LINE ('Record ' || counter);
      DBMS_OUTPUT.PUT_LINE (name || '-' || surname);
      DBMS_OUTPUT.PUT_LINE ('-----------');

      counter := counter + 1 ;

   END LOOP;

   EXCEPTION
      WHEN others THEN
         DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/