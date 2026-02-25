-- 1. Total Bank Balance
SELECT SUM(balance) AS total_bank_balance FROM accounts;

-- 2. City-wise Average Credit Score
SELECT city, AVG(credit_score) AS avg_credit_score
FROM customers
GROUP BY city;

-- 3. Loan Amount by Status
SELECT loan_status, SUM(loan_amount) AS total_loan
FROM loans
GROUP BY loan_status;

-- 4. High Risk Customers
SELECT c.customer_name, c.credit_score, l.loan_status
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id
WHERE c.credit_score < 600
AND l.loan_status = 'Default';

-- 5. Rank Customers by Income
SELECT customer_name,
       income,
       RANK() OVER (ORDER BY income DESC) AS income_rank
FROM customers;

-- 6. Running Total of Transactions
SELECT account_id,
       transaction_date,
       amount,
       SUM(amount) OVER (PARTITION BY account_id ORDER BY transaction_date) AS running_total
FROM transactions;

-- 7. Loan Risk Category
SELECT c.customer_name,
       l.loan_amount,
       c.credit_score,
       CASE
           WHEN c.credit_score >= 750 THEN 'Low Risk'
           WHEN c.credit_score >= 650 THEN 'Medium Risk'
           ELSE 'High Risk'
       END AS risk_category
FROM customers c
JOIN loans l ON c.customer_id = l.customer_id;
