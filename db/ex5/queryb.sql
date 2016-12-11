SELECT DISTINCT hname
FROM Hobby
WHERE hname IN (SELECT DISTINCT H.hname
				FROM Hobby H, Person P, Hobbies HS
				WHERE H.hnum = HS.hnum and P.pid = HS.pid and P.age >= 12 and P.age <= 19)		
ORDER BY hname ASC
