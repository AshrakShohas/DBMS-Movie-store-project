SELECT ADD_MONTHS (Joining_date,6) AS Six_months_Extension
FROM joining
WHERE Employee = 'A';


SELECT ADD_MONTHS (Joining_date, -6) AS Six_months_Extension
FROM joining
WHERE Employee = 'A';
