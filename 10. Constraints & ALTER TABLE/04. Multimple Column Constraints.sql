CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    adress VARCHAR(255) NOT NULL,
    CONSTRAINT name_adress UNIQUE (name, adress)
);

INSERT INTO companies (name, adress)
VALUES('luigis pies', '123 spruce');

CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK (sale_price >= purchase_price)
);

INSERT INTO houses(purchase_price, sale_price)
VALUES(300, 250);