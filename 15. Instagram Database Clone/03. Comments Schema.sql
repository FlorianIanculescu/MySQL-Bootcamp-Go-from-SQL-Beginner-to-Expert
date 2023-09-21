CREATE TABLE comments (
	id INT AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id)
);

SHOW TABLES;

DESC comments;

INSERT INTO comments (comment_text, user_id, photo_id)
VALUES ('Meow!', 1, 2),
	   ('Amazing Shot!', 3, 2),
       ('I <3 this', 2, 1);
       
SELECT * FROM comments;