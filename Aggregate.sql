-- @Aggregate functions

--  AVG() Calculate the average of a set of values.
--  MAX() Returns the max value in a set.
--  MIN() Returns the minimum value in a set.
--  SUM Calculates the sum of values in a set.
--  COUNT() Counts the number of rows in a set.

SELECT * FROM students;

-- AVG
SELECT AVG(student_id) FROM students;

SELECT * FROM students WHERE NOT country = 'UK';

SELECT email FROM students WHERE email is NULL;