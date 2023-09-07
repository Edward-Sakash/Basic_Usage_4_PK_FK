-- Create the "language" table with code and name columns
CREATE TABLE language (
    code VARCHAR(2) PRIMARY KEY,
    name VARCHAR(255)
);

-- Populate the "language" table with data, including language names and ISO 639-1 codes
INSERT INTO language (code, name)
VALUES
    ('de', 'German'),
    ('fr', 'French'),
    ('af', 'Afrikaans'),
    ('es', 'Spanish'),
    ('kk', 'Kazakh'),
    ('ru', 'Russian'),
    ('it', 'Italian'),
    ('ca', 'Catalan');

-- Test the uniqueness constraint by attempting to insert a duplicate code
INSERT INTO language (code, name)
VALUES ('de', 'Duplicate German');
