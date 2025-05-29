SELECT * FROM "user";

-- INSERT INTO
--     "user" (userName, email, age, phone)
-- SELECT 'Asik' || i, 'asik' || i || '@gmail.com', 20 + (i % 30), '0199635' || LPAD((9000 + i)::text, 4, '0')
-- FROM generate_series(0, 999) AS s (i);

EXPLAIN ANALYSE SELECT * FROM "user" WHERE id = 100;

CREATE INDEX indx_user_id ON "user" (id);

DROP INDEX indx_user_id