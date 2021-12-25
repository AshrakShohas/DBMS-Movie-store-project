CREATE OR REPLACE FUNCTION total_salary RETURN NUMBER IS
   avg_sal employees.salary%type;
BEGIN
  SELECT SUM(salary) INTO avg_sal
  FROM EMPLOYEES;
   RETURN avg_sal;
END;
/
