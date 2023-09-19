SELECT * FROM books 
WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
AND released_year > 2010 
AND title LIKE '%novel%';

SELECT title, pages FROM books 
WHERE CHAR_LENGTH(title) > 30 
AND pages > 500;