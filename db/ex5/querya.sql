SELECT DISTINCT P.pname
FROM Person P
WHERE P.pname IN (SELECT DISTINCT P1.pname                                                 
				  FROM Person P1, Hobby H1, Hobbies HS1
				  WHERE P1.pid = HS1.pid and H1.hnum = HS1.hnum and H1.hname = 'Cooking')
				  and P.pname IN 
				  (SELECT DISTINCT P2.pname     
				  FROM Person P2, Hobby H2, Hobbies HS2
				  WHERE P2.pid = HS2.pid and H2.hnum = HS2.hnum and H2.hname = 'Volleyball')
ORDER BY P.pname ASC
