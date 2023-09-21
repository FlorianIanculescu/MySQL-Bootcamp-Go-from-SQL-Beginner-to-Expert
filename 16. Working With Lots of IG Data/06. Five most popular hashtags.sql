-- Challenge #6
-- A brand wants to know which hashtags to use in a post
-- What are the top 5 most commonly used hashtags?

SELECT 
	tag_name, 
    COUNT(*) AS total
FROM photo_tags
INNER JOIN tags ON tags.id = photo_tags.tag_id
GROUP BY tag_id
ORDER BY total DESC
LIMIT 5;