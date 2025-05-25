-- VIEW--
-- What is VIew
-- view ke amra js er function er moto mone korte pari comon ekta voylerplat likha thakbe amader jokhon dor sodo take call dilei hobe
-- View hocche 2 proker
-- NON Matarial VIEW
-- Materaial VIEW

SELECT * from employees;

CREATE VIEW get_short_info_in_employ AS
SELECT employee_name, employee_id
FROM employees;

SELECT * FROM get_short_info_in_employ;