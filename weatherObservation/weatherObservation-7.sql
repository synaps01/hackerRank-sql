SELECT
    DISTINCT(city) AS city
FROM
    station
WHERE
    REGEXP_COUNT(SUBSTR(city,LENGTH(city),1),'[a,e,i,o,u]') = 1
ORDER BY
    city
;