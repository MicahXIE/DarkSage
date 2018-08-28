/*
SQL - Aggregation - The Blunder

mysql注释符有三种：
1、#...
2、"--  ..."
3、/ *...* /

*/

# Question: Salary is integer field and still can use replace method

SELECT CEIL(AVG(Salary)-AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;