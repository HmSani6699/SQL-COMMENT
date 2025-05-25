SELECT * FROM students;

SELECT country, AVG(age)
FROM students
GROUP BY
    country
HAVING
    AVG(age) > 21;