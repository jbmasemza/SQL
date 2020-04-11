#1.SELECT ALL records from table Customers.
SELECT * FROM Customers;

#2.SELECT records only from the name column in the Customers table.
SELECT FirstName, LastName FROM Customers;

#3.Show the name of the Customer whose CustomerID is 1.
SELECT FirstName, LastName FROM Customers;

#4.UPDATE the record for CustomerID = 1 on the Customer table so that the name is “Lerato Mabitso”.
UPDATE Customers
SET FirstName = 'Lerato', LastName = 'Mabitso'
WHERE CustomerID = 1;

#5.DELETE the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM Customers WHERE CustomerID = 2;

#6.Select all unique statuses from the Orders table and get a count of the number of orders for each unique status.
SELECT COUNT(DISTINCT(Status)) FROM Orders;

#7.Return the MAXIMUM payment made on the PAYMENTS table.
SELECT MAX(Amount) FROM Payments;

#8.Select all customers from the “Customers” table, sorted by the “Country” column.
SELECT * FROM Customers
ORDER BY Country;

#9.Select all products with a price BETWEEN R100 and R600.
SELECT * FROM Product
WHERE BuyPrice BETWEEN 100 AND 600;

#10.Select all fields from “Customers” where country is “Germany” AND city is “Berlin”.
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

#11.Select all fields from “Customers” where city is “Cape Town” OR “Durban”.
SELECT * FROM Customers
WHERE City = 'Cape Town' OR City = 'Durban';

#12.Select all records from Products where the Price is GREATER than R500.
SELECT * FROM Products
WHERE BuyPrice > 500;

#13.Return the sum of the Amounts on the Payments table.
SELECT SUM(Amount) FROM Payments;

#14.Count the number of shipped orders in the Orders table.
SELECT COUNT(Status) FROM Orders
WHERE Status = 'Shipped';

#15.Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
SELECT AVG(BuyPrice) AS Rands, (AVG(BuyPrice/12.0)) AS Dollars
FROM Products;

#16.Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT Payments* FROM Payments
INNER JOIN Customers ON Payments.CusromerID = Customer.customerID;

#17.Select all products that have turnable front wheels.
SELECT * Products
WHERE Description LIKE '%Turnable front wheels';

