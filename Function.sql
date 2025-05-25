SELECT * FROM employees;

-- Function Procedural prosses--
CREATE FUNCTION get_emp_count()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT count(*) FROM employees;
$$;

SELECT get_emp_count ();

DROP Function get_emp_count ();

CREATE Function delete_emp()
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE employee_id = 30 ;
$$

SELECT delete_emp ();

CREATE FUNCTION insert_employ()
RETURNS void
LANGUAGE SQL
AS
$$

INSERT INTO employees VALUES(30,'Sadiq','IT',100000,'2022-06-13');

$$

SELECT insert_employ ();

CREATE Function update_employe()
RETURNS void
LANGUAGE SQL
AS
$$
UPDATE employees SET employee_name = 'DEV Sadiq' WHERE employee_id = 30;
$$

SELECT update_employe ();

-- Create New Eploye --
CREATE Function create_employe(p_emp_id INT,p_emp_name VARCHAR(50),p_emp_d_name VARCHAR(50),p_emp_salary NUMERIC(10,2),p_emp_hire DATE)
RETURNS Void
LANGUAGE SQL
AS
$$
INSERT INTO employees VALUES(p_emp_id, p_emp_name, p_emp_d_name, p_emp_salary, p_emp_hire)
$$

SELECT create_employe ( 32, 'Josim', 'Norani', 15000, '2022-04-04' );

-- update employe --
CREATE Function updated_employe(p_emp_name VARCHAR(50),p_d_name VARCHAR(50),p_salary NUMERIC(10,2), p_emp_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
UPDATE employees
 SET 
 employee_name = p_emp_name,
 department_name = p_d_name ,
 salary = p_salary
 WHERE 
 employee_id = p_emp_id;
$$

SELECT updated_employe ( 'Sadiq mia', 'Madrasa', 500000, 30 );