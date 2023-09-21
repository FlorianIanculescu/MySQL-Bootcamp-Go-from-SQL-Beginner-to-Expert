CREATE TABLE likes (
	user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
);

SHOW TABLES;

DESC likes;

INSERT INTO likes(user_id, photo_id)
VALUES (1, 1), 
	   (2, 1), 
       (1, 2), 
       (1, 3),
       (3, 3);

-- Trying to like a photo multiple times:
-- Won't wotk because of primary key constraint
INSERT INTO likes(user_id, photo_id)
VALUES (1, 1);

SELECT * FROM likes;