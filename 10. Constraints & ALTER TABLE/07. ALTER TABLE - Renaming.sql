RENAME TABLE companies TO suppliers;

SELECT * FROM suppliers;

ALTER TABLE suppliers RENAME TO companies;

ALTER TABLE companies
RENAME COLUMN name TO company_name;

desc companies;