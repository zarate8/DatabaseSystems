

SELECT S.sid, avg_g.ag
	FROM student S,
     (SELECT sid, avg(grade) ag
          FROM enroll
     	  GROUP BY sid) avg_g
GROUP BY S.sid;


