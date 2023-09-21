CREATE TABLE  photos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

SHOW TABLES;

DESC photos;

INSERT INTO photos (image_url, user_id)
VALUES ('/alskjd76', 1),
	   ('/lkajsd98', 2),
       ('/90jddlkj', 2);
       
SELECT * FROM photos;

SELECT photos.image_url, username 
FROM photos
INNER JOIN users ON photos.user_id = users.id;