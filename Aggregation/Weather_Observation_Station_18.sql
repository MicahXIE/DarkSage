/*
SQL - Aggregation - Weather Observation Station 18

例如在平面上，坐标（x1, y1）的i点与坐标（x2, y2）的j点的曼哈顿距离为：
d(i,j)=|X1-X2|+|Y1-Y2|.
*/

SELECT ROUND(ABS(MAX(LAT_N) - MIN(LAT_N)) + ABS(MAX(LONG_W) - MIN(LONG_W)),4) FROM STATION;