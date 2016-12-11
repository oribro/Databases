SELECT H.hname
FROM Hobby H
WHERE H.hname IN (SELECT H1.hname
				  FROM Person P1, Hobbies HS1, Hobby H1
				  WHERE HS1.hnum = H.hnum and HS1.pid = P1.pid
				  GROUP BY H1.hname
			      HAVING avg(P1.age) <=ALL(SELECT avg(P.age)
										 FROM Person P, Hobbies HS2, Hobby H2
				  						 WHERE HS2.hnum = H2.hnum and HS2.pid = P.pid
				  						 GROUP BY H2.hname))
ORDER BY H.hname ASC
