SELECT
    city.name AS city_name,
    country.name AS country_name,
    country.population
FROM
    city
JOIN
    country ON city.country_id = country.id
WHERE
    city.is_capital = true
ORDER BY
    country.population DESC
LIMIT 3;
