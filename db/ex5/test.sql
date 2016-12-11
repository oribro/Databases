SELECT DISTINCT H.hname
FROM Hobby H
WHERE NOT EXISTS (SELECT *
				  FROM Hobbies HS1
				  Where HS1.hnum = H.hnum and HS1.frequency < 3)
ORDER BY H.hname ASC
