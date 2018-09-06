/*
SQL - Advanced Join - Placements
*/

# MYSQL, ORALCE
SELECT s.name FROM Students s 
              INNER JOIN Friends f ON f.ID = s.ID
              INNER JOIN Packages p ON p.ID = s.ID
              INNER JOIN Packages p1 ON p1.ID = f.Friend_ID
              WHERE p.Salary < p1.Salary
              ORDER BY p1.Salary;


