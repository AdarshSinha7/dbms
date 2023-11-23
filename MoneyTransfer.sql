USE bank;

CREATE TABLE account (
    accno INT PRIMARY KEY,
    branch_name VARCHAR(255),
    balance DECIMAL(10, 2)
);

INSERT INTO account(accno,branch_name,balance) values (101,"Nirjuli",10000.00);
INSERT INTO account(accno,branch_name,balance) values (102,"Nirjuli",20000.00);
INSERT INTO account(accno,branch_name,balance) values (103,"Naharlagun",15000.00);
INSERT INTO account(accno,branch_name,balance) values (104,"Itanagar",10500.00);

DELIMITER &&
CREATE PROCEDURE TransferFunds (
    IN sender_accno INT,
    IN receiver_accno INT,
    IN transfer_amount DECIMAL(10, 2)
)
BEGIN
    DECLARE sender_balance DECIMAL(10, 2);
    DECLARE receiver_balance DECIMAL(10, 2);
    
    
    SELECT balance INTO sender_balance FROM account WHERE accno = sender_accno;
    SELECT balance INTO receiver_balance FROM account WHERE accno = receiver_accno;
    
    
    IF sender_balance >= transfer_amount THEN
        
        UPDATE account SET balance = sender_balance - transfer_amount WHERE accno = sender_accno;
        
        
        UPDATE account SET balance = receiver_balance + transfer_amount WHERE accno = receiver_accno;
        
        
        COMMIT;
        
        SELECT 'Transfer Successful' AS result;
    ELSE
        
        ROLLBACK;
        
        SELECT 'Insufficient Balance' AS result;
    END IF;
END &&
DELIMITER ;

SELECT * FROM account;

CALL TransferFunds(102, 103, 1000.00);

