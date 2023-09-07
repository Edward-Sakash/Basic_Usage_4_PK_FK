-- Add the "code" column to the "country" table with uniqueness constraint
ALTER TABLE country
ADD COLUMN code VARCHAR(2) UNIQUE;

-- Populate the "country" table with data, including country names and ISO country codes
INSERT INTO country (name, code)
VALUES
    ('Germany', 'DE'),
    ('France', 'FR'),
    ('Namibia', 'NA'),
    ('Uruguay', 'UY'),
    ('Kazakhstan', 'KZ'),
    ('Spain', 'ES'),
    ('Switzerland', 'CH'),
    ('Austria', 'AT');

-- Test the uniqueness constraint by attempting to insert a duplicate code
INSERT INTO country (name, code)
VALUES ('Test unique', 'DE');


