CREATE TABLE Products
(Id SERIAL PRIMARY KEY, ProductName VARCHAR(30) NOT NULL, Company VARCHAR(20) NOT NULL, ProductCount INTEGER DEFAULT 0, Price NUMERIC NOT NULL
);
CREATE TABLE Customers
(Id SERIAL PRIMARY KEY, FirstName VARCHAR(30) NOT NULL
);
CREATE TABLE Orders
(
Id SERIAL PRIMARY KEY, ProductId INTEGER NOT NULL REFERENCES Products(Id) ON DELETE CASCADE, CustomerId INTEGER NOT NULL REFERENCES Customers(Id) ON DELETE CASCADE, CreatedAt DATE NOT NULL, ProductCount INTEGER DEFAULT 1, Price NUMERIC NOT NULL
);
INSERT INTO Products(ProductName, Company, ProductCount, Price) VALUES ('iPhone X", "Apple', 2, 66000), ("iPhone 8", "Apple", 2, 51000),
('iPhone 7', "Apple', 5, 42000),
('Galaxy S9', "Samsung', 2, 56000), 
('Galaxy 58 Plus", "Samsung", 1, 46000), 
('Nokia 9', 'HDM Global', 2, 26000),
("Desire 12', "HTC", 6, 38000);

INSERT INTO Customers(FirstName)
VALUES ("Tom'), ("Bob'),("Sam");

INSERT INTO Orders(ProductId, CustomerId, CreatedAt, ProductCount, Price) VALUES
(SELECT Id FROM Products WHERE ProductName='Galaxy 59'), (SELECT Id FROM Customers WHERE FirstName='Tom'), 2017-07-11', 2,
(SELECT Price FROM Products WHERE ProductName='Galaxy S9')
(SELECT Id FROM Products WHERE ProductName="iPhone 8"), (SELECT Id FROM Customers WHERE FirstName= Tom'), 2017-07-13", 1, (SELECT Price FROM Products MHERE ProductName="iPhone 8')
(SELECT Id FROM Products WHERE ProductNome='iPhone 8'), (SELECT Id FROM Customers WHERE FirstName='Bob'), 2017-07-11',
1, (SELECT Price FROM Products MHERE ProductName-"iPhone 8')

SELECT * FROM Orders, Customers;
WHERE Orders.CustomerId - Customers.Id;

SELECT Customers. FirstName, Products.ProductName, Orders.CreatedAt FROM Orders, Customers, Products
WHERE Orders.CustomerId = Customers.Id AND
Orders.ProductId=Products.Id;
SELECT Customers, FirstName, Products, ProductName, Orders, CreatedAt FROM Orders, Customers, Products WHERE Orders, CustomerId = Customers.Id AND Orders, ProductId=Products.Id;
SELECT C.FirstName, P.ProductName, O.CreatedAt FROM Orders AS O, Customers AS C, Products AS P WHERE O.CustomerId = C.Id AND O.ProductId=P.Id;
SELECT C.FirstName, P.ProductName, O.
FROM Orders AS 0, Customers AS C, Products AS P
WHERE O.CustomerId - C.Id AND O.ProductId=P.Id;