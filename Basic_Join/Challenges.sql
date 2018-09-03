/*
SQL - Basic Join - Challenges
*/

# good example for comment

# MYSQL:

/* these are the columns we want to output */
SELECT h.hacker_id, h.name ,COUNT(c.hacker_id) AS c_count

/* this is the join we want to output them from */
FROM Hackers h
    INNER JOIN Challenges c ON h.hacker_id = c.hacker_id

/* after they have been grouped by hacker */
GROUP BY h.hacker_id, h.name

/* but we want to be selective about which hackers we output */
/* having is required (instead of where) for filtering on groups */
HAVING 

    /* output anyone with a count that is equal to... */
    c_count = 
        /* the max count that anyone has */
        (SELECT MAX(t1.count)
        FROM (SELECT COUNT(hacker_id) AS count
             FROM Challenges
             GROUP BY hacker_id
             ORDER BY hacker_id) t1)

    /* or anyone who's count is in... */
    or c_count in 
        /* the set of counts... */
        (SELECT t2.count
         FROM (SELECT COUNT(*) AS count 
               FROM Challenges
               GROUP BY hacker_id) t2
         /* who's group of counts... */
         GROUP BY t2.count
         /* has only one element */
         HAVING COUNT(t2.count) = 1)

/* finally, the order the rows should be output */
ORDER BY c_count DESC, c.hacker_id

/* ;) */
;