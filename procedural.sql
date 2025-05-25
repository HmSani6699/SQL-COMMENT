SELECT * FROM employees;

-- Procedural Statement --
CREATE PROCEDURE insert_emp(id INT,name VARCHAR(50),department VARCHAR(50),salary NUMERIC(10,2),hire_date DATE)
LANGUAGE plpgsql
AS
$$
BEGIN
 INSERT INTO 
 employees 
 VALUES (id,
name ,
department,
salary,
hire_date);
END
$$

CALL insert_emp ( 33, 'Korim', 'Shopkeeper', 12000, '2022-02-23' );

-- delete employe
CREATE Procedure delete_emp(p_id INT)
LANGUAGE plpgsql
AS
$$
DECLARE
emp_id INT;

BEGIN
SELECT employee_id INTO emp_id FROM employees WHERE employee_id = p_id;
DELETE FROM employees WHERE employee_id = emp_id;
END

$$

CALL delete_emp (30)