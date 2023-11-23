-- Insert data into 'branch' table
INSERT INTO branch (branch_name, branch_city, assets)
VALUES
    ('B1', 'Brooklyn', 500000),
    ('B2', 'Manhattan', 700000);

-- Insert data into 'customer' table
INSERT INTO customer (customer_name, customer_street, customer_city)
VALUES
    ('Alice', 'Street A', 'Brooklyn'),
    ('Bob', 'Street B', 'Manhattan');

-- Insert data into 'loan' table
INSERT INTO loan (loan_number, branch_name, amount)
VALUES
    (10121, 'B1', 2000),
    (10122, 'B2', 3000);

-- Insert data into 'borrower' table
INSERT INTO borrower (customer_name, loan_number)
VALUES
    ('Alice', 10121),
    ('Bob', 10122);

-- Insert data into 'account' table
INSERT INTO account (account_number, branch_name, balance)
VALUES
    (20101, 'B1', 1000),
    (20102, 'B2', 1500);

-- Insert data into 'depositor' table
INSERT INTO depositor (customer_name, account_number)
VALUES
    ('Alice', 20101),
    ('Bob', 20102);

-- Insert more data into 'branch' table
INSERT INTO branch (branch_name, branch_city, assets)
VALUES
    ('B3', 'Brooklyn', 600000),
    ('B4', 'Queens', 550000),
    ('B5', 'Bronx', 450000);

-- Insert more data into 'customer' table
INSERT INTO customer (customer_name, customer_street, customer_city)
VALUES
    ('Charlie', 'Street C', 'Brooklyn'),
    ('David', 'Street D', 'Bronx'),
    ('Eve', 'Street E', 'Queens');

-- Insert more data into 'loan' table
INSERT INTO loan (loan_number, branch_name, amount)
VALUES
    (10123, 'B3', 2500),
    (10124, 'B4', 1800),
    (10125, 'B5', 3200);

-- Insert more data into 'borrower' table
INSERT INTO borrower (customer_name, loan_number)
VALUES
    ('Charlie', 10123),
    ('David', 10124),
    ('Eve', 10125);

-- Insert more data into 'account' table
INSERT INTO account (account_number, branch_name, balance)
VALUES
    (20103, 'B3', 700),
    (20104, 'B4', 1100),
    (20105, 'B5', 900);

-- Insert more data into 'depositor' table
INSERT INTO depositor (customer_name, account_number)
VALUES
    ('Charlie', 20103),
    ('David', 20104),
    ('Eve', 20105);
    
INSERT INTO customer (customer_name, customer_street, customer_city)
VALUES ('Hopper', 'Street H', 'City H');

INSERT INTO loan (loan_number, branch_name, amount)
VALUES (10126, 'B1', 5000);

INSERT INTO borrower (customer_name, loan_number)
VALUES ('Hopper', 10126);


