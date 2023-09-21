CREATE DATABASE instagram;

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

DESC users;

INSERT INTO users (username) 
VALUES ('BlueTheCat'),
	   ('CharlieBrown'),
	   ('ColtSteele');
       
SELECT * FROM users;