CREATE TABLE Transactions (
    User_ID INTEGER,
    Product_ID INTEGER,
    Category TEXT,
    Price REAL,
    Discount REAL,
    Final_Price REAL,
    Payment_Method TEXT,
    Purchase_Date TEXT
);
.mode csv
.import dataset.csv Transactions
SELECT * FROM Transactions;
SELECT Category, AVG(Price) AS AveragePrice
FROM Transactions
GROUP BY Category;
SELECT * FROM Transactions
WHERE Payment_Method = 'Net Banking';
SELECT * FROM Transactions
ORDER BY Purchase_Date;
SELECT SUM(Final_Price) AS TotalRevenue
FROM Transactions;
SELECT Product_ID, Discount
FROM Transactions
ORDER BY Discount DESC
LIMIT 5;
