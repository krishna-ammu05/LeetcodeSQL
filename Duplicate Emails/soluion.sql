# Write your MySQL query statement below
-------------WITHOUT USING DISTINCT-------------
# Write your MySQL query statement below
SELECT email
FROM Person
GROUP BY email 
HAVING COUNT(id) > 1;

--------------USING DISTINCT-----------------
 Write your MySQL query statement below
SELECT email
FROM Person
GROUP BY email 
HAVING COUNT(DISTINCT id) > 1;