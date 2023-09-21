-- Challenge #2:
-- What day of the week do most users register on?
-- We need to figure out when to schedule an ad campgain

SELECT
	DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users 
GROUP BY DAYNAME(created_at)
ORDER BY total DESC;