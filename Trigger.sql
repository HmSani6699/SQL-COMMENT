-- Trigger Statement --
CREATE TABLE trigger_users (
    name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO
    trigger_users
VALUES ('Sadiq', 'sadiq@gmail.com'),
    ('Noman', 'noman@gmail.com');

SELECT * FROM trigger_users;

CREATE TABLE delete_trigger_users (
    userName VARCHAR(50),
    date_time TIMESTAMP
);

SELECT * FROM delete_trigger_users;

DROP TABLE trigger_users;

DROP TABLE delete_trigger_users;

CREATE OR REPLACE Function load_delete_users ()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO delete_trigger_users VALUES(OLD.name,now());
RAISE NOTICE 'Loaded in delete user ';
RETURN OLD;
END
$$

CREATE OR REPLACE TRIGGER save_delet_user
BEFORE DELETE
ON trigger_users
FOR EACH ROW 
EXECUTE PROCEDURE load_delete_users();

DELETE FROM trigger_users WHERE name = 'Sadiq';

-- Trigger in product parchage --

CREATE TABLE product (
    id SERIAL UNIQUE PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO
    product
VALUES (1, 'Panjabi'),
    (2, 'Ator'),
    (3, 'Payjama'),
    (4, 'Shart');

SELECT * FROM product

CREATE TABLE delete_product (
    id SERIAL UNIQUE PRIMARY KEY,
    product_name VARCHAR(50)
);

SELECT * FROM delete_product;

CREATE OR REPLACE FUNCTION store_product()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO delete_product VALUES(OLD.id, OLD.product_name);
RETURN OLD;
END
$$

CREATE TRIGGER store_p
BEFORE DELETE
ON product
FOR EACH ROW
EXECUTE PROCEDURE store_product();

DELETE FROM product WHERE product_name = 'Ator';