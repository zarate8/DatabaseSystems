SELECT S.sname
FROM student S, enroll E
WHERE S.sid = E.sid
GROUP BY S.sname, S.sid
HAVING
	COUNT(DISTINCT E.sid) = 
		       (SELECT COUNT(*)
		       	FROM course C)