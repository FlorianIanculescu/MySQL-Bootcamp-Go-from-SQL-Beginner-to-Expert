-- Challenge #4
-- We're running a new contest to see who can get the most likes on a single photo
-- WHO WON?!!

SELECT 
	username, 
    image_url, 
    COUNT(*) AS likes 
FROM users
INNER JOIN photos ON photos.user_id = users.id
INNER JOIN likes ON likes.photo_id = photos.id
GROUP BY photo_id
ORDER BY likes DESC
LIMIT 1; 