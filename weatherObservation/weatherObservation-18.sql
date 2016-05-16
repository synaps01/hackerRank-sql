SELECT
    ROUND(ABS(MAX(lat_n)-MAX(long_w)) + ABS(MIN(lat_n) - MIN(long_w)),4) AS manh_dist
FROM
    station
;