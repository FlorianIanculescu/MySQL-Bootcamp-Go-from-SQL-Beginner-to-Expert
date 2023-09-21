CREATE TABLE tags (
	id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
	photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY (photo_id) REFERENCES photos(id),
	FOREIGN KEY (tag_id) REFERENCES tags(id),
    PRIMARY KEY (photo_id, tag_id) 
);

SHOW TABLES;

DESC tags;

DESC photo_tags;

INSERT INTO tags (tag_name)
VALUES ('adorable'),
	   ('cute'),
       ('sunrise');

SELECT * FROM tags;
       
INSERT INTO photo_tags(photo_id, tag_id) 
VALUES (1, 1),
	   (1, 2),
       (2, 3),
       (3, 2);

SELECT * FROM photo_tags;

-- Trying to add a tag to a photo multiple times:
-- Won't wotk because of primary key constraint
INSERT INTO photo_tags(photo_id, tag_id) 
VALUES (1, 1);
       