/*


*/

-- MYSQL:

SELECT  IF(g.grade >= 8, s.Name, NULL),
        g.Grade, s.Marks FROM Students s INNER JOIN Grades g ON s.Marks 
        BETWEEN g.Min_Mark AND g.Max_Mark 
        ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;

SELECT  (CASE g.grade >= 8 WHEN TRUE THEN s.Name ELSE NULL END),
        g.Grade, s.Marks FROM Students s INNER JOIN Grades g ON s.Marks 
        BETWEEN g.Min_Mark AND g.Max_Mark 
        ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;

# not recommend to use BETWEEN AND bec it is slow
SELECT  (CASE g.grade >= 8 WHEN TRUE THEN s.Name ELSE NULL END),
        g.Grade, s.Marks FROM Students s INNER JOIN Grades g ON s.Marks 
        WHERE s.Marks >= g.Min_Mark AND s.Marks <= g.Max_Mark 
        ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;


# ORACLE: case when, decode()
# good reference: http://www.cnblogs.com/eshizhan/archive/2012/04/06/2435493.html
# CASE g.grade >= 8 WHEN TRUE fail, strange
SELECT  (CASE WHEN g.grade >= 8 THEN s.Name ELSE NULL END),
        g.Grade, s.Marks FROM Students s INNER JOIN Grades g ON s.Marks 
        BETWEEN g.Min_Mark AND g.Max_Mark 
        ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;



