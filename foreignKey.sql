CREATE table "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(20) NOT NULL
);

CREATE table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE SET DEFAULT DEFAULT 2
);

SELECT * FROM post;

SELECT * FROM "user";

INSERT INTO
    "user" (userName)
VALUES ('akash'),
    ('batas'),
    ('sagor'),
    ('nodi');

INSERT INTO
    post (title, user_id)
VALUES ('Akash onek sondor', 2),
    ('Batas amader bondu', 1),
    ('Sagor amader moron', 4),
    ('Nodi vallo lage', 4);

DROP TABLE "user";

DROP Table post;

DELETE FROM "user" WHERE id = 4;

-- Deletion connostrain on DELETE user
-- Restroct Deletion -> ON DELETE RESTRICT / NO DELETE NO ACTION (default)
-- Cascadion Delation -> ON  DELETE CASCADE
-- Setting NULL -> ON DELETE SET NULL
-- Set default value -> ON DELETE SET DEFAULT

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(50) NOT NULL
);

INSERT INTO
    "user" (userName)
VALUES ('Sadiq'),
    ('Noamn'),
    ('Josim'),
    ('Korim');

CREATE Table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id) ON DELETE CASCADE
);

INSERT INTO
    post (id, title, user_id)
VALUES (1, 'Sadiq post', 1),
    (2, 'NOman post', 2),
    (3, 'Sadiq post', 1),
    (4, 'Josim post', 3),
    (5, 'NULL  post', NULL);

SELECT * FROM "user";

SELECT * FROM post;

DROP TABLE "user";

DROP TABLE post;

DELETE FROM "user" WHERE id = 4;

-- INNER JOIN --
SELECT * FROM post INNER JOIN "user" ON post.user_id = "user".id;

-- LEFT JOIN --
SELECT * FROM post LEFT JOIN "user" ON post.user_id = "user".id;

-- Right join --
SELECT * FROM post RIGHT JOIN "user" ON post.user_id = "user".id;

-- Full join --
SELECT * FROM post FULL JOIN "user" ON post.user_id = "user".id;