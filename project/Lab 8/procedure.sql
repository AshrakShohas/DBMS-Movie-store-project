SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getemp IS 
   emp_id employees.employee_id%type;
    lname employees.last_name%type;
BEGIN
    emp_id := 176;
    SELECT last_name INTO lname
    FROM EMPLOYEES
    WHERE employee_id = emp_id;
    DBMS_OUTPUT.PUT_LINE('Last name: '||lname);
END;
/
SHOW ERRORS;
