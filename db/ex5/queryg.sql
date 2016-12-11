SELECT DISTINCT HS.hnum, min(P1.pname)as oldest, min(P2.pname) as youngest
FROM Person P1, Person P2, Hobbies HS
WHERE HS.hnum IN (SELECT HS1.hnum
				  FROM Hobbies HS1
				  WHERE HS1.hnum = HS.hnum and HS1.pid = P1.pid
				  GROUP BY HS1.hnum, P1.age
			      HAVING P1.age >= ALL(SELECT P3.age
										 FROM Person P3, Hobbies HS2
				  						 WHERE HS2.hnum = HS1.hnum and HS2.pid = P3.pid
				  						 GROUP BY HS2.hnum, P3.age))
and HS.hnum IN (SELECT HS3.hnum
				  FROM Hobbies HS3
				  WHERE HS3.hnum = HS.hnum and HS3.pid = P2.pid
				  GROUP BY HS3.hnum, P2.age
			      HAVING P2.age <= ALL(SELECT P4.age
										 FROM Person P4, Hobbies HS4
				  						 WHERE HS4.hnum = HS3.hnum and HS4.pid = P4.pid
				  						 GROUP BY HS4.hnum, P4.age))
GROUP BY HS.hnum
ORDER BY HS.hnum

