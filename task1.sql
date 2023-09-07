\c postgres 

drop DATABASE if exists map;

CREATE DATABASE map;

\c map

CREATE TABLE country (
    id SERIAL PRIMARY KEY,
    name TEXT,
    population INTEGER,
    last_status_change DATE
);

INSERT INTO country (name, population, last_status_change)
VALUES
('Germany', 83190556, '1990-10-03'),
('France', 67413000, '1958-10-04'),
('Namibia', 2550226 , '1990-03-21'),
('Uruguay', 3518552, '1830-07-18'),
('Kazakhstan', 18711560, '1995-08-30');

SELECT * FROM country;