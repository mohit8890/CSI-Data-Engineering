-- Query the difference between the maximum and minimum populations in CITY

SELECT
    ROUND(
        SQRT(
            POWER((SELECT MAX(LAT_N) FROM STATION) - (SELECT MIN(LAT_N) FROM STATION), 2) +
            POWER((SELECT MAX(LONG_W) FROM STATION) - (SELECT MIN(LONG_W) FROM STATION), 2)
        ),
        4
    )
FROM
    DUAL;