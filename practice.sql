-- Active: 1747476651373@@127.0.0.1@5432@db1
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, '2022-01-05', 100.50),
    (2, '2020-01-07', 200.75),
    (1, '2022-01-08', 150.25),
    (3, '2020-05-10', 300.00),
    (2, '2022-01-15', 180.50),
    (3, '2022-01-20', 220.25),
    (1, '2022-01-25', 90.00),
    (2, '2022-01-28', 120.75),
    (3, '2021-02-01', 250.50),
    (1, '2022-02-05', 180.25),
    (4, '2023-02-05', 190.25);

SELECT * FROM orders;

-- Find customers who have placed more than 2 orders and calculate the total amount spent by each of these customers.
-- Find the total amount of orders placed each month in the year 2022.

SELECT customer_id, count(order_id) as order, sum(total_amount)
FROM orders
GROUP BY
    customer_id
HAVING
    count(order_id) > 2;

SELECT extract(
        MONTH
        FROM order_date
    ) as order_month, sum(total_amount)
FROM orders
WHERE
    extract(
        YEAR
        FROM order_date
    ) = '2022'
GROUP BY
    order_month;

CREATE DATABASE db1;

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT check (age > 10),
    phone VARCHAR(15)
);

INSERT INTO
    "user" (userName, email, age, phone)
VALUES (
        'Sadiq',
        'sadiq@gmail.com',
        21,
        '01996359111'
    ),
    (
        'Noman',
        'noman@gmail.com',
        23,
        '01996359111'
    ),
    (
        'Josim',
        'josim@gmail.com',
        27,
        '01996359111'
    );

CREATE Table blog (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) on delete cascade
);

INSERT INTO
    blog (title, content, user_id)
VALUES (
        'My first blog',
        'This is the conntent of my first blog.',
        1
    ),
    (
        'My Second blog',
        'This is the conntent of my Second blog.',
        2
    ),
    (
        'My Third blog',
        'This is the conntent of my Third blog.',
        3
    )

SELECT * FROM "user";

SELECT * FROM blog;

SELECT * from "user" INNER JOIN blog ON "user".id = blog.user_id;

INSERT INTO
    "user" (userName, email, age, phone)
VALUES (
        'Asik',
        'asik@gmail.com',
        21,
        '01996359111'
    ),
    (
        'Ovhi',
        'ovhi@gmail.com',
        21,
        '01996359111'
    ),
    (
        'Emon',
        'emon@gmail.com',
        21,
        '01996359111'
    );

SELECT DISTINCT
    userName
FROM "user"
WHERE
    LEFT(userName, 1) NOT IN ('A', 'E', 'O', 'U', 'I')
    OR RIGHT(userName, 1) NOT IN ('A', 'E', 'O', 'U', 'I');