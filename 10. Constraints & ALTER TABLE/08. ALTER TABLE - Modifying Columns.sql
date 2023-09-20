ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

desc companies;

INSERT INTO companies (adress)
VALUES ('2554 rose lane');

SELECT * FROM companies;

ALTER TABLE suppliers
CHANGE business bizz_name VARCHAR(50);