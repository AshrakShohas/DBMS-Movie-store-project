SELECT LAST_DAY (Viva_date)
FROM joining;


SELECT employee, EXTRACT(Year FROM Viva_date) AS Year
FROM joining;



SELECT employee, EXTRACT(Month FROM Viva_date) AS Month
FROM joining;
