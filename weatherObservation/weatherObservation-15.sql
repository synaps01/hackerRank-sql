SELECT
    ROUND(MAX(long_w),4) AS SUM_LAT
FROM
    station
WHERE
    lat_n = (SELECT MAX(lat_n) FROM station WHERE lat_n < 137.2345 )
;