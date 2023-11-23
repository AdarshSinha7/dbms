desc account;
desc borrower;
desc branch;
desc customer;
desc depositor;
desc loan;

SELECT *
FROM depositor
WHERE account_number IN (
    SELECT account_number
    FROM account
    WHERE branch_name IN (
        SELECT branch_name
        FROM branch
        WHERE branch_city = 'Brooklyn'
    )
);

SELECT SUM(amount) AS total_loan_amount
FROM loan;

SELECT branch_name
FROM branch
WHERE assets > ANY (
    SELECT assets
    FROM branch
    WHERE branch_city = 'Brooklyn'
);


DELETE FROM borrower
WHERE loan_number = 10121;
DELETE FROM customer
WHERE customer_name IN (
    SELECT customer_name
    FROM borrower
    WHERE loan_number = 10121
);

select * from borrower;

UPDATE loan
SET amount = 4000
WHERE loan_number IN (
    SELECT loan_number
    FROM borrower
    WHERE customer_name = 'Hopper'
);

select * from borrower where customer_name = 'Hopper';
select * from loan where loan_number = 10126;















