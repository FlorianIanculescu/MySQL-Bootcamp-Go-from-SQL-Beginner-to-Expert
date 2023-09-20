CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

CREATE TABLE papers (
	title VARCHAR(50),
    grade INT,
    student_id INT,
	FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT * FROM students;

SELECT * FROM papers;

SELECT first_name, title, grade FROM students
INNER JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

SELECT first_name, title, grade FROM students
LEFT JOIN papers ON students.id = papers.student_id;

SELECT 
	first_name,
	IFNULL(title, 'MISSING') AS title,
	IFNULL(grade, 0) AS grade 
FROM students
LEFT JOIN papers ON students.id = papers.student_id;

SELECT 
	first_name,
	IFNULL(AVG(grade), 0) AS average,
    CASE
		WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
    END AS passing_status
FROM students
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;