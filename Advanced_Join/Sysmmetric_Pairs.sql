/*

SQL - Advanced Join - Sysmmetric Pairs

*/

SELECT A.X, A.Y FROM Functions A 
			    INNER JOIN Functions B ON B.Y = A.X 
			    WHERE A.Y >= A.X AND B.X = A.Y 
			    GROUP BY A.X, A.Y 
			    HAVING COUNT(*) > 1 OR (COUNT(*) = 1 AND A.Y != A.X) 
			    ORDER BY A.X;