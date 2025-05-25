SELECT * FROM students;

SELECT * FROM students WHERE country = 'USA' OR country = 'UK';

SELECT * FROM students WHERE country IN ('USA', 'UK');

SELECT * FROM students WHERE student_id IN (1, 3);