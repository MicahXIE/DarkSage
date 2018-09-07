/*

SQL - Advanced Join - Sysmmetric Pairs

*/

/*

mysql> select * from Functions;
+----+----+
| X  | Y  |
+----+----+
| 20 | 20 |
| 20 | 20 |
| 20 | 21 |
| 23 | 22 |
| 22 | 23 |
| 21 | 20 |
+----+----+

INNER JOIN A, B (every line of B to match A)
mysql> SELECT A.X,A.Y,B.X,B.Y FROM Functions A INNER JOIN Functions B ON B.Y = A.X;
+----+----+----+----+
| X  | Y  | X  | Y  |
+----+----+----+----+
| 20 | 20 | 20 | 20 |
| 20 | 20 | 20 | 20 |
| 20 | 21 | 20 | 20 |
| 20 | 20 | 20 | 20 |
| 20 | 20 | 20 | 20 |
| 20 | 21 | 20 | 20 |
| 21 | 20 | 20 | 21 |
| 22 | 23 | 23 | 22 |
| 23 | 22 | 22 | 23 |
| 20 | 20 | 21 | 20 |
| 20 | 20 | 21 | 20 |
| 20 | 21 | 21 | 20 |
+----+----+----+----+


*/

SELECT A.X, A.Y FROM Functions A 
			    INNER JOIN Functions B ON B.Y = A.X 
			    WHERE A.Y >= A.X AND B.X = A.Y 
			    GROUP BY A.X, A.Y 
			    HAVING COUNT(*) > 1 OR (COUNT(*) = 1 AND A.Y != A.X) 
			    ORDER BY A.X;