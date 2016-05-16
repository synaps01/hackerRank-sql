SELECT
    DISTINCT(city) AS city
FROM
    station
WHERE
    REGEXP_COUNT(SUBSTR(city,1,1),'[a,e,i,o,u,A,E,I,O,U]') = 0
    AND
    REGEXP_COUNT(SUBSTR(city,LENGTH(city),1),'[a,e,i,o,u]') = 0
;