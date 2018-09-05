/*

wrong solution:

SELECT s.hacker_id, h.name, SUM(s.score) 
FROM Submissions s INNER JOIN Hackers h ON s.hacker_id = h.hacker_id 
WHERE s.score = (SELECT MAX(s1.score) FROM Submissions s1 
WHERE s1.hacker_id = s.hacker_id and s1.challenge_id = s.challenge_id) 
GROUP BY s.hacker_id, h.name HAVING SUM(s.score) > 0  
ORDER BY SUM(s.score) DESC, s.hacker_id ASC; 

reason:
will add multiple times when the same challenge has several equal max value

*/

select h.hacker_id, name, sum(score) as total_score
from
hackers as h inner join
/* find max_score*/
(select hacker_id,  max(score) as score from submissions group by challenge_id, hacker_id) max_score

on h.hacker_id=max_score.hacker_id
group by h.hacker_id, name

/* don't accept hackers with total_score=0 */
having total_score > 0

/* finally order as required */
order by total_score desc, h.hacker_id
;