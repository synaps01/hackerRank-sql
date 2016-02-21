SELECT 
    TO_CHAR(
        SQRT(
            POWER( MAX(long_w)-MAX(lat_n),2) +
            POWER( MIN(long_w)-MIN(lat_n),2)
        )
        ,'99.9999'
    ) AS eucl_dist 
FROM 
    station
;