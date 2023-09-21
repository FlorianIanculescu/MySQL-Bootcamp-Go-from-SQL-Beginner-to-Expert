-- Challenge #5
-- Our investors want to know...
-- How many times does the average user post?

SELECT COUNT(*) FROM photos;
SELECT COUNT(*) FROM users;

SELECT 
	(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS average;