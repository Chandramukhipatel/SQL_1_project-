-- Create Database
CREATE DATABASE bank_project;
USE bank_project;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    income DECIMAL(10,2),
    credit_score INT
);

-- Accounts Table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Loans Table
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Transactions Table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
