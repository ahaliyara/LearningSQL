SELECT * FROM public.monarchs
LIMIT 100

--Inner join of presidents and prime_ministers, joining on country  
SELECT prime_ministers.country, prime_ministers.continent, prime_minister, president  
FROM presidents  
INNER JOIN prime_ministers  
ON presidents.country = prime_ministers.country;

--Inner join of presidents and prime_ministers, joining on country  
SELECT p2.country, p2.continent, prime_minister, president  
FROM presidents AS p1 
INNER JOIN prime_ministers AS p2  
ON p1.country = p2.country;

--Inner join of presidents and prime_ministers, joining on country 
SELECT p2.country, p2.continent, prime_minister, president 
FROM presidents AS p1 
INNER JOIN prime_ministers AS p2 
USING(country);

SELECT p1.country, p1.continent,  
       president, prime_minister
FROM prime_ministers AS p1 
INNER JOIN presidents AS p2 
USING(country);

-- SQL query for chaining inner joins 
SELECT  
    p1.country,  
    p1.continent,  
    president,  
    prime_minister,  
    pm_start 
FROM prime_ministers AS p1 
INNER JOIN presidents AS p2 
USING(country)  
INNER JOIN prime_minister_terms AS p3 
USING(prime_minister);


SELECT *  
FROM left_table 
INNER JOIN right_table 
ON left_table.id = right_table.id;

SELECT *  
FROM left_table 
INNER JOIN right_table 
ON left_table.id = right_table.id 
    AND left_table.date = right_table.date;

--Inner join of presidents and prime_ministers, joining on country  
SELECT prime_ministers.country, prime_ministers.continent, prime_minister, president  
FROM presidents  
INNER JOIN prime_ministers  
ON presidents.country = prime_ministers.country;

SELECT * FROM monarchs
SELECT * FROM prime_ministers
SELECT * FROM presidents

