/*
SQL - Basic Join - Ollivanders Inventory
*/

/*
wrong example
SELECT w.id, wp.age, MIN(w.coins_needed), w.power 
	FROM Wands w INNER JOIN Wands_Property wp ON w.code = wp.code 
		WHERE wp.is_evil = 0
			GROUP BY w.id, wp.age, w.power
				ORDER BY w.power DESC, wp.age DESC;

reason: same age and power will have different MIN cost, this will lead to
multiple lines appear
*/

SELECT w.id, wp.age, w.coins_needed, w.power 
	FROM Wands w INNER JOIN Wands_Property wp ON w.code = wp.code 
		WHERE wp.is_evil = 0 and w.coins_needed = 
			(SELECT MIN(w1.coins_needed) FROM Wands w1 INNER JOIN Wands_Property wp1
			 	ON w1.code = wp1.code WHERE w1.power = w.power and wp1.age = wp.age) 
					ORDER BY w.power DESC, wp.age DESC;