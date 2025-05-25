-- Active: 1747476651373@@127.0.0.1@5432@alter

SELECT * FROM users;

-- Create Table --
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

-- Data insert in Table
INSERT INTO
    users (id, name, email, age, address)
VALUES (
        3,
        'Sadiqur Rahman',
        'sadiq@gmail.com',
        20,
        'Nowga'
    );

-- Update table name --
ALTER TABLE students RENAME to "users";

-- Delete Tabel --
DROP TABLE users;

-- Add a new Column  in table--
ALTER TABLE users ADD COLUMN address VARCHAR(59);

-- Add a new Column and set Default values in table--
ALTER TABLE users ADD address VARCHAR(50) DEFAULT 'Dhaka';

-- Delete exgestiong Column in table --
ALTER TABLE users DROP address;

-- Rename Exgesting Column Name in Table --
ALTER TABLE users RENAME COLUMN u_add to address;

-- Modify Data type of a Column --
ALTER TABLE users ALTER COLUMN address TYPE VARCHAR(100);

ALTER TABLE users ADD COLUMN dob DATE;

-- Add constraint --
ALTER TABLE users ALTER COLUMN address SET NOT NULL;

-- Delete constraint --
ALTER TABLE users alter COLUMN address DROP NOT NULL;

ALTER Table users alter COLUMN dob set DEFAULT '2022-03-20';

ALTER Table users RENAME COLUMN dob to date_of;