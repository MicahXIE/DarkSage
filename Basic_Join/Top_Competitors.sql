/*
SQL - Basic Join - Top Competitors
join reference: https://www.cnblogs.com/BeginMan/p/3754322.html
*/

# HAVING, ORDER BY can use COUNT()
SELECT h.hacker_id, h.name FROM Submissions s 
    INNER JOIN Hackers h ON s.hacker_id = h.hacker_id
    INNER JOIN Challenges c ON s.challenge_id = c.challenge_id
    INNER JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
    WHERE s.score = d.score
    GROUP BY h.hacker_id, h.name
    HAVING COUNT(h.hacker_id) > 1
    ORDER BY COUNT(h.hacker_id) DESC, h.hacker_id ASC;