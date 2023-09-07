SELECT
    city.id AS city_id,
    city.name AS city_name,
    city.area,
    city.is_capital,
    city.country_id AS city_country_id,
    country.id AS country_id,
    country.name AS country_name,
    country.population,
    country.last_status_change
FROM
    city
JOIN
    country ON city.country_id = country.id
WHERE
    country.name = 'Germany';

