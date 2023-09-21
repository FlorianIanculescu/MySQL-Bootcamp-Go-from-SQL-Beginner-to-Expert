SELECT * FROM full_reviews;

SELECT AVG(rating) FROM full_reviews;

SELECT title, AVG(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT title, COUNT(rating) FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT released_year, genre, AVG(rating) FROM full_reviews GROUP BY released_year, genre WITH ROLLUP;
