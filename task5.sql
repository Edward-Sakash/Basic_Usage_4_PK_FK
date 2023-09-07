SELECT
    country.name AS country_name,
    city.name AS city_name,
    city.area
FROM
    city
JOIN
    country ON city.country_id = country.id
WHERE
    city.area = (
        SELECT MIN(area) FROM city
    )
LIMIT 1;
