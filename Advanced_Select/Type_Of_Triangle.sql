/*
https://www.hackerrank.com/challenges/what-type-of-triangle/problem
Equilateral 等边的
Isosceles 等腰的
Scalene 不等边的
*/

/* case when nested method 
任意两边之和大于第三边，也就满足任意两边之差小于第三边
*/

SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

/* IF method */

SELECT IF((A+ B) > C and (A + C)> B and (B + C) > A ,
            IF(A = B and A = C and C=B,'Equilateral',
                IF(A=B OR B = C OR A = C,'Isosceles','Scalene'))
        ,'Not A Triangle') TRIANGLES
FROM TRIANGLES