SELECT 
	title, 
    ROUND(AVG(rating), 2) AS avg_rating 
FROM series
JOIN reviews ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;