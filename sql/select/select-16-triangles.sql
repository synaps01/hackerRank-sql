SELECT
    CASE
    WHEN  a = b AND a = c  THEN 'Equilateral'
    WHEN  (a = b OR a = c) AND ((a + b) > c) THEN 'Isosceles'
    WHEN  (a + b) > c THEN 'Scalene'
    ELSE 'Not A Triangle' END
FROM triangles;