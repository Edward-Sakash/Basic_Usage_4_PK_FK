-- Select locales with language, country, and sort by language name
SELECT
    l.name AS "Locale",
    lang.name AS "Language",
    country.name AS "Country"
FROM
    locale l
JOIN
    language lang ON l.language_code = lang.code
JOIN
    country country ON l.country_code = country.code
UNION
-- Include 'English (Namibia)' entry
SELECT
    'English (Namibia)' AS "Locale",
    'English' AS "Language",
    'Namibia' AS "Country"
ORDER BY
    "Language";



