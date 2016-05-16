SELECT
    city
FROM
    station
WHERE
    REGEXP_COUNT(SUBSTR(city,1,1),'[a,e,i,o,u,A,E,I,O,U]') = 1
    AND
    REGEXP_COUNT(SUBSTR(city,LENGTH(city),1),'[a,e,i,o,u]') = 1
;