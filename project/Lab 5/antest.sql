SELECT cust_nbr, name
from customer
where region_id =5 
minus
select c.cust_nbr, c.name
from customer c
where c.cust_nbr in
(select o.cust_nbr
 from cust_order o, employee e
 where o.sales_emp_id = e.emp_id
 and e.lname = 'MARTIN');