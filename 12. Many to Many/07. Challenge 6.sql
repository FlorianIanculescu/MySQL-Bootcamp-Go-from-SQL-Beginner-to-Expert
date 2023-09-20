-- Using CASE
SELECT 
	first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(ROUND(AVG(rating), 2), 0) AS AVG,
    CASE
		WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- Using IF
SELECT 
	first_name,
    last_name,
    COUNT(rating) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(ROUND(AVG(rating), 2), 0) AS AVG,
	IF(COUNT(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;