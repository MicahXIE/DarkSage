/*
SQL - Aggregation - Weather Observation Station 19

Euclidean Distance：m维空间中两个点之间的真实距离
*/

-- The CAST() function converts a value from one datatype to another datatype.
-- e.g SELECT CAST(150 AS CHAR);


SELECT cast(
    (
        SQRT(
            (POWER((min(LAT_N)-max(LAT_N)),2)) + (POWER((min(LONG_W)-max(LONG_W)),2))
        )
    
    )as decimal (7,4)
                                                
) FROM STATION;
