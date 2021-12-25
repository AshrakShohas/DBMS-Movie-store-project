CREATE OR REPLACE FUNCTION get_annual_comp(
  sal  IN employees.salary%TYPE,
  comm IN employees.commission_pct%TYPE)
 RETURN NUMBER IS
BEGIN
  RETURN (NVL(sal,0) * 12 + (NVL(comm,0) * nvl(sal,0) * 12));
END get_annual_comp;
/
