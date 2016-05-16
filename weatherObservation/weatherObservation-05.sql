SELECT 
    city,
    LENGTH(city) AS numchars
FROM
    station
WHERE
    LENGTH(city) = (SELECT MAX(LENGTH(city)) FROM STATION)
UNION
SELECT * FROM(
    SELECT 
        city,
        LENGTH(city) AS numchars
    FROM
        station
    WHERE
        LENGTH(city) = (SELECT MIN(LENGTH(city)) FROM STATION)
        ORDER BY CITY ASC
)
WHERE ROWNUM = 1
;