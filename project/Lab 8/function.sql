CREATE OR REPLACE FUNCTION avg_salary RETURN NUMBER IS
   avg_sal employees.salary%type;
BEGIN
  SELECT AVG(salary) INTO avg_sal
  FROM EMPLOYEES;
   RETURN avg_sal;
END;
/
