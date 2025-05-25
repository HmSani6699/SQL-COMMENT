-- @Scalar functions

--  UPPER() Converts a string to uppercase.
--  LOWER() Converts a string to lowercase.
--  CONCAT() Concatenates two or more strings.
--  LENGTH() Returns the number of characters in a string.

--UPPER CASE
SELECT UPPER(first_name), * FROM students;

-- LOWER CASE
SELECT LOWER(first_name), * FROM students;

--CONCAT
SELECT CONCAT( first_name, ' ', last_name ) FROM students;

--LENGTH
SELECT LENGTH(first_name) FROM students;