SELECT DISTINCT pname
FROM Person P
WHERE NOT EXISTS ((Select H1.hnum
				  FROM Hobby H1, Hobbies HS1, Person P1
				  WHERE H1.hnum = HS1.hnum and HS1.pid = P1.pid and P1.pname = 'Idan')
				  EXCEPT	  
				  (Select H2.hnum
				  FROM Hobbies HS2, Person P2, Hobby H2
				  WHERE HS2.pid = P.pid and H2.hnum = HS2.hnum))
ORDER BY pname ASC 
