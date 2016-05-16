SELECT d.name, p.name, s.name, a.name FROM
  (SELECT name, rownum rid FROM (SELECT name FROM occupations WHERE occupation = 'Doctor' ORDER BY name)) d
  ,(SELECT name, rownum rid FROM (SELECT name FROM occupations WHERE occupation = 'Professor' ORDER BY name)) p
  ,(SELECT name, rownum rid FROM (SELECT name FROM occupations WHERE occupation = 'Singer' ORDER BY name)) s
  ,(SELECT name, rownum rid FROM (SELECT name FROM occupations WHERE occupation = 'Actor' ORDER BY name)) a
WHERE
   p.rid = d.rid(+)
   AND p.rid = s.rid(+)
   AND p.rid = a.rid(+)
;