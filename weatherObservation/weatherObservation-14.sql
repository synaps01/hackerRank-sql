SELECT
    TRUNC(MAX(lat_n),4) AS SUM_LAT
FROM
    station
WHERE
    lat_n < 137.2345
;