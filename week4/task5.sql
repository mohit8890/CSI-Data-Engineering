-- Query the names of all cities where the CONTINENT is 'Africa'.

SELECT 
    CITY.NAME
FROM CITY
JOIN COUNTRY
ON CITY.CountryCode = COUNTRY.Code
WHERE CONTINENT = 'Africa';