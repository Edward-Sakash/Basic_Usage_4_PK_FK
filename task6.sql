SELECT
    c.name AS country_name,
    city.name AS city_name,
    city.area
FROM
    city
JOIN
    country AS c ON city.country_id = c.id
WHERE
    city.is_capital = true
    AND city.area = (
        SELECT MIN(area) FROM city WHERE is_capital = true
    )
LIMIT 1;
