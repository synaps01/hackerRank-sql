SELECT name||'('||SUBSTR(occupation,0,1)||')' line
FROM occupations
ORDER BY name;
SELECT 'There are total '||COUNT(occupation)||' '||LOWER(occupation)||'s.' line
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;