CREATE Table users1 (
    id SERIAL UNIQUE,
    frist_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER CHECK (age >= 18),
    grade CHAR(3),
    course VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    dob DATE,
    blood_groupe VARCHAR(3),
    country VARCHAR(50)
);

SELECT * FROM users1;

INSERT INTO
    users1
VALUES (
        1,
        'Sadiqur',
        'Rahman',
        20,
        'A',
        'JavaScript',
        'sadiqur01@gmail.com',
        '2001-02-10',
        'A+',
        'Bangladesh'
    ),
    (
        2,
        'Tamim',
        'Iqbal',
        21,
        'A',
        'JavaScript',
        'tamim02@gmail.com',
        '2002-03-15',
        'B+',
        'Bangladesh'
    ),
    (
        3,
        'Nayeem',
        'Islam',
        22,
        'A',
        'JavaScript',
        'nayeem03@gmail.com',
        '2000-05-20',
        'AB+',
        'Bangladesh'
    ),
    (
        4,
        'Rakib',
        'Hasan',
        23,
        'A',
        'JavaScript',
        'rakib04@gmail.com',
        '2003-07-11',
        'A-',
        'Bangladesh'
    ),
    (
        5,
        'Arif',
        'Hossain',
        24,
        'A',
        'JavaScript',
        'arif05@gmail.com',
        '2003-11-10',
        'OB-',
        'Bangladesh'
    ),
    (
        6,
        'Zahid',
        'Khan',
        25,
        'A',
        'React',
        'zahid06@gmail.com',
        '1999-12-12',
        'B-',
        'US'
    ),
    (
        7,
        'Fahim',
        'Rahman',
        26,
        'A',
        'React',
        'fahim07@gmail.com',
        '1998-08-18',
        'O+',
        'US'
    ),
    (
        8,
        'Mizan',
        'Ahmed',
        27,
        'A',
        'React',
        'mizan08@gmail.com',
        '1997-06-22',
        'AB-',
        'US'
    ),
    (
        9,
        'Shihab',
        'Chowdhury',
        28,
        'A',
        'React',
        'shihab09@gmail.com',
        '2002-01-01',
        'O-',
        'US'
    ),
    (
        10,
        'Imran',
        'Kabir',
        29,
        'A',
        'React',
        'imran10@gmail.com',
        '2003-11-10',
        'OB-',
        'US'
    ),
    (
        11,
        'Nabil',
        'Hossain',
        30,
        'A',
        'Next',
        'nabil11@gmail.com',
        '2000-04-04',
        'A+',
        'UK'
    ),
    (
        12,
        'Shakib',
        'Mahmud',
        31,
        'A',
        'Next',
        'shakib12@gmail.com',
        '2001-09-09',
        'B+',
        'UK'
    ),
    (
        13,
        'Riyad',
        'Alam',
        32,
        'A',
        'Next',
        'riyad13@gmail.com',
        '2004-02-14',
        'AB+',
        'UK'
    ),
    (
        14,
        'Hasan',
        'Sayeed',
        33,
        'A',
        'Next',
        'hasan14@gmail.com',
        '2005-10-10',
        'A-',
        'UK'
    ),
    (
        15,
        'Jubayer',
        'Halim',
        34,
        'A',
        'Next',
        'jubayer15@gmail.com',
        '2003-11-10',
        'OB-',
        'UK'
    ),
    (
        16,
        'Sajid',
        'Anam',
        35,
        'A',
        'TypeScript',
        'sajid16@gmail.com',
        '2000-06-06',
        'B-',
        'Japan'
    ),
    (
        17,
        'Tareq',
        'Morshed',
        36,
        'A',
        'TypeScript',
        'tareq17@gmail.com',
        '1999-03-03',
        'O+',
        'Japan'
    ),
    (
        18,
        'Mehedi',
        'Hasan',
        37,
        'A',
        'TypeScript',
        'mehedi18@gmail.com',
        '2001-07-07',
        'AB-',
        'Japan'
    ),
    (
        19,
        'Zunayed',
        'Hossain',
        38,
        'A',
        'TypeScript',
        'zunayed19@gmail.com',
        '2002-08-08',
        'O-',
        'Japan'
    ),
    (
        20,
        'Rafi',
        'Uddin',
        39,
        'A',
        'TypeScript',
        'rafi20@gmail.com',
        '2003-11-10',
        'OB-',
        'Japan'
    ),
    (
        21,
        'Noman',
        'Ali',
        40,
        'A',
        'PostgreSQL',
        'noman21@gmail.com',
        '2001-11-11',
        'A+',
        'Nepal'
    ),
    (
        22,
        'Arafat',
        'Rana',
        41,
        'A',
        'PostgreSQL',
        'arafat22@gmail.com',
        '1998-01-01',
        'B+',
        'Nepal'
    ),
    (
        23,
        'Tanvir',
        'Ahmed',
        42,
        'A',
        'PostgreSQL',
        'tanvir23@gmail.com',
        '2002-02-02',
        'O+',
        'Nepal'
    ),
    (
        24,
        'Nasim',
        'Reza',
        43,
        'A',
        'PostgreSQL',
        'nasim24@gmail.com',
        '1999-09-09',
        'AB+',
        'Nepal'
    ),
    (
        25,
        'Rafsan',
        'Sabik',
        44,
        'A',
        'PostgreSQL',
        'rafsan25@gmail.com',
        '2003-11-10',
        'OB-',
        'Nepal'
    );

-- LEarning Group By --
SELECT country FROM users1 GROUP BY country;

-- Use agregate with group by --
SELECT country, count(*), AVG(age) FROM users1 GROUP BY country;

-- Use FIltaring HAVING with group by --
SELECT country, AVG(age)
FROM users1
GROUP BY
    country
HAVING
    AVG(age) >= 27;

SELECT dob FROM users1 GROUP BY dob;

SELECT course, count(*) FROM users1 GROUP BY course;

SELECT count(country) - count(DISTINCT country) FROM users1;

SELECT count(country) FROM users1;

SELECT country, AVG(age)
FROM users1
GROUP BY
    country
having
    AVG(age) >= 22;

SELECT extract(
        YEAR
        FROM dob
    ) AS date_of_birth, count(*)
FROM users1
GROUP BY
    dob;

CREATE TABLE station (id INTEGER, city VARCHAR(50));

SELECT * FROM station;

INSERT INTO
    station (id, city)
VALUES (1, 'Dhaka'),
    (2, 'Dhaka'),
    (3, 'Pakunda'),
    (4, 'Pakunda'),
    (5, 'Sonargoanj'),
    (6, 'Sonargoanj');