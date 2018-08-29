-- means - group by first column from SELECT . The same pattern could be used for ORDER BY

/*
SELECT (salary * months)as earnings ,count(*) FROM employee GROUP BY 1 ORDER BY earnings desc LIMIT 1;
*/

SELECT salary*months, COUNT(*) FROM employee WHERE salary*months = (SELECT MAX(salary*months) FROM employee) GROUP BY 1