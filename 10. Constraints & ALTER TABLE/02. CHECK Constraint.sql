CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

INSERT INTO users (username, age )
VALUES ('coltsteele', -3);

SELECT * FROM users;

CREATE TABLE palindromes (
	word VARCHAR(100) CHECK(REVERSE(word) = word)
);

INSERT INTO palindromes (word)
VALUES ('mom');