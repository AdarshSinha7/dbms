-- Create the micro_statement table
CREATE TABLE micro_statement (
    acc_no INTEGER,
    avail_balance DECIMAL,
    FOREIGN KEY (acc_no)
        REFERENCES customer (acc_no)
        ON DELETE CASCADE
);

-- Insert data into the customer table
INSERT INTO customer VALUES (1004, 'Janitor', 4500);

-- Set the delimiter for creating the trigger
DELIMITER &&

-- Create the trigger to update micro_statement
CREATE TRIGGER update_after
    AFTER UPDATE ON customer
    FOR EACH ROW
BEGIN
    INSERT INTO micro_statement (acc_no, avail_balance) VALUES (NEW.acc_no, NEW.avail_balance);
END &&

-- Reset the delimiter
DELIMITER ;

-- Update the customer's avail_balance
UPDATE customer 
SET 
    avail_balance = avail_balance + 1500
WHERE
    acc_no = 1002;
UPDATE customer 
SET 
    avail_balance = avail_balance + 1500
WHERE
    acc_no = 1004;

-- Select data from the micro_statement table
SELECT 
    *
FROM
    micro_statement;
