-- To list triggers:
SHOW TRIGGERS;

-- To remove a trigger:
DROP TRIGGER prevent_self_follow;

INSERT INTO follows(follower_id, followee_id)
VALUES (7, 7);