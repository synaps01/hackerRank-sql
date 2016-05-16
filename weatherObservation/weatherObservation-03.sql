SELECT
    DISTINCT(city) AS city
FROM
    station
WHERE
    mod(id,2) = 0
;