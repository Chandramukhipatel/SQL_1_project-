-- Customers
INSERT INTO customers VALUES
(1,'Amit Sharma','Delhi',75000,720),
(2,'Riya Patel','Mumbai',50000,680),
(3,'Karan Singh','Pune',40000,590),
(4,'Anjali Verma','Delhi',90000,800),
(5,'Rahul Mehta','Mumbai',65000,610);

-- Accounts
INSERT INTO accounts VALUES
(101,1,'Savings',150000),
(102,2,'Current',80000),
(103,3,'Savings',20000),
(104,4,'Savings',300000),
(105,5,'Current',95000);

-- Loans
INSERT INTO loans VALUES
(201,1,500000,8.5,'Active'),
(202,2,300000,9.0,'Closed'),
(203,3,700000,11.5,'Default'),
(204,4,400000,7.5,'Active'),
(205,5,250000,10.0,'Active');

-- Transactions
INSERT INTO transactions VALUES
(1,101,'2024-01-10','Deposit',20000),
(2,101,'2024-01-15','Withdrawal',5000),
(3,102,'2024-01-18','Deposit',15000),
(4,103,'2024-01-20','Withdrawal',3000),
(5,104,'2024-01-25','Deposit',50000),
(6,105,'2024-02-02','Deposit',10000),
(7,101,'2024-02-10','Deposit',7000);
