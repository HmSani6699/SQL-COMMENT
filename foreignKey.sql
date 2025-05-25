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