CREATE DATABASE BankDatabase;
USE BankDatabase;

CREATE TABLE branch (
    branch_name VARCHAR(50) PRIMARY KEY,
    branch_city VARCHAR(50),
    assets INT
);
CREATE TABLE customer (
    customer_name VARCHAR(50) PRIMARY KEY,
    customer_street VARCHAR(100),
    customer_city VARCHAR(50)
);
CREATE TABLE loan (
    loan_number INT PRIMARY KEY,
    branch_name VARCHAR(50),
    amount INT,
    FOREIGN KEY (branch_name)
        REFERENCES branch (branch_name)
);
CREATE TABLE borrower (
    customer_name VARCHAR(50),
    loan_number INT,
    PRIMARY KEY (customer_name , loan_number),
    FOREIGN KEY (customer_name)
        REFERENCES customer (customer_name),
    FOREIGN KEY (loan_number)
        REFERENCES loan (loan_number)
);
CREATE TABLE account (
    account_number INT PRIMARY KEY,
    branch_name VARCHAR(50),
    balance INT,
    FOREIGN KEY (branch_name)
        REFERENCES branch (branch_name)
);
CREATE TABLE depositor (
    customer_name VARCHAR(50),
    account_number INT,
    PRIMARY KEY (customer_name , account_number),
    FOREIGN KEY (customer_name)
        REFERENCES customer (customer_name),
    FOREIGN KEY (account_number)
        REFERENCES account (account_number)
);
