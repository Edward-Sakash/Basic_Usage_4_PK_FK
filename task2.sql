-- Connect to the PostgreSQL server
\c postgres

-- Drop the database if it exists
DROP DATABASE IF EXISTS map;

-- Create a new database named "map"
CREATE DATABASE map;

-- Connect to the "map" database
\c map

-- Create the "country" table
CREATE TABLE country (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Insert data into the "country" table
INSERT INTO country (name)
VALUES
    ('Germany'),
    ('France'),
    ('Namibia'),
    ('Uruguay'),
    ('Kazakhstan');

-- Create the "city" table
CREATE TABLE city (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    area DECIMAL(10, 2),
    is_capital BOOLEAN,
    country_id INTEGER REFERENCES country(id) ON DELETE SET NULL
);

-- Insert data into the "city" table
INSERT INTO city (name, area, is_capital, country_id)
VALUES
    ('Nur-Sultan', 810.2, true, 5),
    ('Montevideo', 201.00, true, 4),
    ('Florida', 8.2, false, 4),
    ('Windhoek', 5133.00, true, 3),
    ('Swakopmund', 196.30, false, 3),
    ('Marseille', 240.62, false, 2),
    ('Berlin', 891.7, true, 1);

-- Select all fields in the "city" table
SELECT * FROM city;
