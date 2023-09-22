CREATE DATABASE trigger_demo;

CREATE TABLE users (
	username VARCHAR(100),
    age INT
);

SHOW TABLES;

DESC users;

INSERT INTO users (username, age)
VALUES ('bobby', 23);

SELECT * FROM users;

INSERT INTO users (username, age)
VALUES ('Sally', 16);

DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN
          IF NEW.age < 18
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;

INSERT INTO users (username, age)
VALUES ('Sue', 54);

INSERT INTO users (username, age)
VALUES ('Yang', 14);

SELECT * FROM users;