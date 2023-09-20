SELECT 
	title, 
    rating, 
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviews
INNER JOIN series ON reviews.series_id = series.id
INNER JOIN reviewers ON reviews.reviewer_id = reviewers.id
ORDER BY title;

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews ON reviews.reviewer_id = reviewers.id
INNER JOIN series ON reviews.series_id = series.id;