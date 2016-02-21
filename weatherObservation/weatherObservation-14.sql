SELECT
    TRUNC(MAX(lat_n),4) AS lat_n
FROM
    station
WHERE
    lat_n < 137.2345
;