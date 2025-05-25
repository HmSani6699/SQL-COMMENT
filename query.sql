SELECT * FROM person;
-- Create Table --
CREATE TABLE person (
    p_id SERIAL UNIQUE,
    p_name VARCHAR(50),
    p_email VARCHAR(400) NOT NULL UNIQUE
);

-- Update Table --
ALTER TABLE person RENAME TO users;

-- Delete Table --
DROP TABLE users;

-- Data add to Table --
INSERT INTO
    person (
        p_id,
        p_name,
        p_email,
        address
    )
VALUES (
        3,
        'Thalha',
        'talha@gmail.com',
        'Shirabo'
    );

-- Add New Column in Table --
ALTER TABLE person
ADD COLUMN address VARCHAR(200) DEFAULT 'default@gamil.com' NOT NULL

-- Delete column --
ALTER Table person DROP column address;

-- Rename column name--
alter Table person rename column address to p_address;

create table users (
    id Serial UNIQUE NOT NULL,
    frist_name VARCHAR(20),
    last_name VARCHAR(10),
    email VARCHAR(100) UNIQUE
);

INSERT INTO
    users (
        id,
        frist_name,
        last_name,
        email
    )
VALUES (
        1,
        'Sadiq',
        'Mia',
        'sadiq@gmail.com'
    );

SELECT * from users;

ALTER TABLE students RENAME TO users;

select * from person1;

create table person1 (
    id SERIAL UNIQUE NOT NULL,
    name VARCHAR(20),
    age INTEGER check (age >= 17),
    email VARCHAR(20) UNIQUE NOT NULL
);

alter table friedns RENAME to person1;

insert into
    person1 (id, name, age, email, address)
VALUES (
        3,
        'Sadiq1',
        24,
        'sadiq13@gmail.com',
        'Dhaka'
    )

alter Table person1 add COLUMN address VARCHAR(200);

alter Table person1 RENAME COLUMN s_address to address;

alter Table person1 drop address;

ALTER TABLE person1 alter COLUMN name TYPE VARCHAR(50);

ALTER Table person1 alter COLUMN email type VARCHAR(100);

ALTER Table person1 alter COLUMN age set NOT null;

alter table person1 alter column age drop not null;

SELECT * from person1;

alter table person1 add constraint unique_person1_age UNIQUE (age);

alter table person1 drop constraint unique_person1_age;

ALTER Table person1 add constraint unique_person1_age UNIQUE (age);

alter Table person1 DROP constraint unique_person1_age;

alter table person1 ADD constraint Pk_person1_age primary KEY (age);

TRUNCATE Table person;

drop table person;

create Table student (
    id SERIAL UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INTEGER CHECK (age >= 18),
    email VARCHAR(300) UNIQUE NOT NULL,
    dod DATE,
    blood_group CHAR(2)
)

INSERT INTO
    student (
        name,
        age,
        email,
        dod,
        blood_group
    )
VALUES (
        'Sadiq',
        18,
        'sadi@ggmail.com',
        '2001/10/02',
        'O-'
    ),
    (
        'Alif',
        19,
        'alif@ggmail.com',
        '2002/10/02',
        'O-'
    ),
    (
        'Noman',
        20,
        'noman@ggmail.com',
        '2003/10/02',
        'O-'
    ),
    (
        'Kobir',
        22,
        'kobir@ggmail.com',
        '2004/10/02',
        'O-'
    );

SELECT * FROM student;

SELECT name, email FROM student;

SELECT name as "Student Name" FROM student;

SELECT * FROM student ORDER BY id ASC;

SELECT * FROM student ORDER BY id DESC;

SELECT * FROM student;

ALTER TABLE student ADD COLUMN address VARCHAR(200) DEFAULT 'Dhaka'

ALTER Table student DROP COLUMN address;

INSERT INTO
    student (
        name,
        age,
        email,
        dod,
        blood_group,
        grade,
        address
    )
VALUES (
        'Josim',
        30,
        'jo@gmail.com',
        '2004/10/02',
        'A+',
        'C',
        'khulna'
    ),
    (
        'Roman',
        30,
        'roman@gmail.com',
        '2005/11/03',
        'A+',
        'C',
        'khulna'
    ),
    (
        'Halim',
        29,
        'halim@gmail.com',
        '2005/11/03',
        'B+',
        'D',
        'pakunda'
    ),
    (
        'Nur',
        26,
        'nur@gmail.com',
        '2006/10/02',
        'B+',
        'D',
        'Pakunda'
    );

SELECT address FROM student;

-- Gwt the unique value use from [ DICTINCT ];
SELECT DISTINCT address FROM student;

-- ORDERING THE STUDENT USING [ WHERE ] --
-- Select Student From Dhaka
-- Select Student With 'A' Grade in Dhaka
-- Select Student With Specific Blood Group ('A+')
-- Select Student From the Dhaka or Khulna
-- Select Student From the Dhaka or Khulna and the Age is 20
-- Select Student with Grade of 'A' or 'B' in Dhaka or Pakunda

SELECT * FROM student WHERE address = 'Dhaka';

SELECT * FROM student WHERE address = 'Dhaka' AND grade = 'A';

SELECT * FROM student WHERE blood_group = 'A+';

SELECT * FROM student where address = 'Dhaka' OR address = 'khulna';

SELECT *
FROM student
WHERE (
        address = 'Dhaka'
        OR address = 'khulna'
    )
    AND age = 20;

SELECT *
FROM student
WHERE (
        grade = 'A'
        OR grade = 'B'
    )
    AND (
        address = 'Dhaka'
        OR address = 'khulna'
    );

-- Using conditional operator --

SELECT * FROM student WHERE age >= 20;

SELECT * FROM student WHERE age <= 20;

SELECT * FROM student WHERE age != 20;

-- Sceler function in postgreSQL --
SELECT * FROM student;

-- Upper ()
SELECT upper(name) FROM student;

-- Lower ()
SELECT lower(name) FROM student;

-- Concat ()
SELECT concat(name, ' ', email) FROM student;

-- Lenght ()
SELECT length(name) FROM student;

-- Agregate function in PostgreSQL

-- Avg ()
SELECT AVG(age) FROM student;

-- Max ()
SELECT MAX(age) FROM student;

-- Min
SELECT MIN(age) FROM student;

-- Sum ()
SELECT SUM(age) FROM student;

SELECT COUNT(*) FROM student;

SELECT * FROM student;

SELECT blood_group FROM student;

SELECT * FROM student WHERE address = 'Dhaka';

SELECT * FROM student WHERE blood_group IS NOT NULL;

SELECT * FROM student WHERE blood_group IS NULL;

SELECT COALESCE(blood_group, 'C') FROM student;

-- In keyword
SELECT * FROM student WHERE address IN ('Dhaka', 'Pakunda')

-- Between keyword
SELECT * FROM student WHERE age BETWEEN 18 and 20;

-- LIKE keyword
SELECT * FROM student WHERE name LIKE 'S%';

-- ILIKE keyword
SELECT * FROM student WHERE name ILIKE 'n%';

-- LIMIT keyword
SELECT * FROM student LIMIT 2 OFFSET 4;