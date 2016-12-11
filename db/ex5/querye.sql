SELECT DISTINCT P.pname
FROM Person P
WHERE P.pname IN (SELECT pname
				  FROM Person P1, Hobbies HS1
				  WHERE P1.pid = HS1.pid
				  GROUP BY P1.pname
				  HAVING count(HS1.hnum) > 2)
ORDER BY P.pname ASC
