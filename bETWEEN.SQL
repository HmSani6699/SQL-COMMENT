SELECT * FROM students;

SELECT * FROM students WHERE student_id BETWEEN 1 AND 5;

SELECT *
FROM students
WHERE
    dob BETWEEN '2001-01-03' AND '2003-03-03'
ORDER BY dob;