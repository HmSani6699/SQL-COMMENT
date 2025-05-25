-- Show Timezone
SHOW timezone;

SELECT now();

-- Two stamp type in time zone like ( TIMESTAMP without time zone, TIMESTAMP with time zone)
CREATE table timeZone (
    twithout TIMESTAMP WITHOUT TIME ZONE,
    twith TIMESTAMP WITH TIME ZONE
);

INSERT INTO
    timezone
VALUES (
        '2025-05-19 10:47:00',
        '2025-05-19 10:47:00'
    );

SELECT * FROM timezone;

SELECT now();

SELECT CURRENT_TIME;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'ddd')

SELECT CURRENT_DATE - INTERVAL '1 years'

SELECT age (CURRENT_DATE, '2003-11-10');

SELECT EXTRACT( MONTH FROM TIMESTAMP '2020-12-31 13:30:15' );

SELECT CURRENT_DATE