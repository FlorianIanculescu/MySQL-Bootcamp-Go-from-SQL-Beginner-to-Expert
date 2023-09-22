CREATE TABLE unfollows (
	follower_id INT NOT NULL,
    followee_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (follower_id) REFERENCES users (id),
	FOREIGN KEY (followee_id) REFERENCES users (id),
	PRIMARY KEY (follower_id, followee_id)
);

SHOW TABLES;

SELECT * FROM unfollows;

DELIMITER $$

CREATE TRIGGER capture_unfollow
	AFTER DELETE ON follows FOR EACH ROW
    BEGIN
		INSERT INTO unfollows(follower_id, followee_id)
        VALUES (OLD.follower_id, OLD.followee_id);
    END;
$$

DELIMITER ;

-- INSERT INTO unfollows table using SET
-- DELIMITER $$

-- CREATE TRIGGER capture_unfollow
-- 	AFTER DELETE ON follows FOR EACH ROW
--     BEGIN
-- 		INSERT INTO unfollows
--         SET follower_id = OLD.follower_id,
-- 			followee_id = OLD.followee_id;
--     END;
-- $$

-- DELIMITER ;

SELECT * FROM unfollows;

SELECT * FROM follows LIMIT 5;

DELETE FROM follows WHERE follower_id = 2 AND followee_id = 1;

DELETE FROM follows WHERE follower_id = 3;