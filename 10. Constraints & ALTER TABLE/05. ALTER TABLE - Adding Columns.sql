ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

SELECT * FROM companies;

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL;

SELECT * FROM companies;

-- ALTER TABLE companies
-- ADD COLUMN employee_count INT NOT NULL DEFAULT 1;
