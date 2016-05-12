SELECT
    ROUND(MIN(long_w),4) AS long_w
FROM
    station
WHERE
    lat_n = ( SELECT MIN(lat_n) FROM station WHERE lat_n > 38.7780 )
;