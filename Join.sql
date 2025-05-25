CREATE table "user" (
    id SERIAL PRIMARY KEY,
    userName VARCHAR(20) NOT NULL
);

CREATE table post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
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

INSERT INTO
    post (id, title, user_id)
VALUES (
        6,
        'This is left joing test',
        NULL
    );

DROP TABLE "user";

DROP Table post;

SELECT *
FROM post as p
    INNER JOIN "user" as u ON p.user_id = u.id;

-- LEFT join --
SELECT *
FROM post
    LEFT OUTER JOIN "user" ON post.user_id = "user".id;

-- RIGHT join --
SELECT *
FROM post
    RIGHT OUTER JOIN "user" ON post.user_id = "user".id;