--- Create the "locale" table with name, language_code, and country_code columns
CREATE TABLE locale (
    name VARCHAR(255),
    language_code VARCHAR(2),
    country_code VARCHAR(2),
    PRIMARY KEY (language_code, country_code)
);

-- Populate the "locale" table with data, including locale names, language codes, and country codes
INSERT INTO locale (name, language_code, country_code)
VALUES
    ('German', 'de', 'DE'),
    ('Austrian', 'de', 'AT'),
    ('Swiss German', 'de', 'CH'),
    ('French', 'fr', 'FR'),
    ('Afrikaans', 'af', 'NA'),
    ('English (Namibia)', 'en', 'NA'),
    ('LATAM Spanish', 'es', 'UY'),
    ('Spanish', 'es', 'ES'),
    ('Kazakh', 'kk', 'KZ'),
    ('Russian', 'ru', 'KZ'),
    ('Italian', 'it', 'CH'),
    ('French', 'fr', 'CH'),
    ('Catalan', 'ca', 'ES'),
    ('Another Locale', 'xx', 'YY');  -- Add the missing locale entry

-- Test the uniqueness constraint by attempting to insert a duplicate key
INSERT INTO locale (name, language_code, country_code)
VALUES ('Duplicate Locale', 'de', 'DE');

