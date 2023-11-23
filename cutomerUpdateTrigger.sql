CREATE TABLE customer (
    acc_no INTEGER PRIMARY KEY,
    cust_name VARCHAR(20),
    avail_balance DECIMAL
);

CREATE TABLE mini_statement (
    acc_no INTEGER,
    avail_balance DECIMAL,
    FOREIGN KEY (acc_no)
        REFERENCES customer (acc_no)
        ON DELETE CASCADE
);

INSERT INTO customer VALUES (1000, 'Fanny', 7000);
INSERT INTO customer VALUES (1001, 'Peter', 12000);
INSERT INTO customer VALUES (1002, 'Alex', 6000);
INSERT INTO customer VALUES (1003, 'Joy', 10000);

SELECT 
    *
FROM
    customer;

DELIMITER &&

CREATE TRIGGER update_cus
    BEFORE UPDATE ON customer
    FOR EACH ROW
BEGIN
    INSERT INTO mini_statement (acc_no, avail_balance) VALUES (OLD.acc_no, OLD.avail_balance);
END &&

DELIMITER ;

UPDATE customer 
SET 
    avail_balance = avail_balance + 3000
WHERE
    acc_no = 1001;
UPDATE customer 
SET 
    avail_balance = avail_balance + 3000
WHERE
    acc_no = 1000;

SELECT 
    *
FROM
    mini_statement;
