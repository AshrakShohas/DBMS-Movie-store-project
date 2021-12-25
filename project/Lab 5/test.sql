INSERT INTO english_group(roll, name)
SELECT '1007045', name
FROM students WHERE subject= 'English';


SELECT cust_nbr, name
FROM customer
WHERE region_id = 5
UNION
SELECT c.cust_nbr, c.name
FROM customer c
WHERE c.cust_nbr IN 	(SELECT o.cust_nbr
	                     	FROM cust_order o, employee e
	                  	WHERE o.sales_emp_id = e.emp_id
			AND e.lname = 'MARTIN');
