-- Challenge #3:
-- We want to target our inactive users with an email campaign.
-- Find the users who have never posted a photo

-- Left Join
SELECT username FROM users
LEFT JOIN photos ON photos.user_id = users.id
WHERE image_url IS NULL;  

-- Right Join
SELECT username FROM photos
RIGHT JOIN users ON photos.user_id = users.id
WHERE image_url IS NULL;  