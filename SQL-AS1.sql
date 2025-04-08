--Create Tables
CREATE DATABASE DAT601_AS1;
GO
USE DAT601_AS1;
GO

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer
(
	CustID		CHAR(10)	NOT NULL,
	CustName	CHAR(50)	NOT NULL,
	CustAddress	CHAR(50)	,
	CustCity	CHAR(50)	,
	CustContact	CHAR(50)	,
	CustPhone	CHAR(15)	,
	CustEmail	CHAR(255)	
);

DROP TABLE IF EXISTS OrderEntry;
CREATE TABLE OrderEntry
(
	OrderID		INTEGER		NOT NULL,
	OrderDate	DATETIME	NOT NULL,
	CustID		CHAR(10)	NOT NULL
);

DROP TABLE IF EXISTS Vendor;
CREATE TABLE Vendor
(
	VendorID		CHAR(10)	NOT NULL,
	VendorName		CHAR(50)	NOT NULL,
	VendorAddress	CHAR(50)	,
	VendorCity		CHAR(50)	,
	VendorPhone		CHAR(15)
);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product
(
	ProductID		CHAR(10)	NOT NULL,
	VendorID		CHAR(10)	NOT NULL,
	ProductName		CHAR(255)	NOT NULL,
	ProductPrice	DECIMAL(8,2)NOT NULL,
	ProductDesc		VARCHAR(100)	
);

DROP TABLE IF EXISTS OrderItem;
CREATE TABLE OrderItem
(
	OrderID		INTEGER		NOT NULL,
	OrderItem	INTEGER		NOT NULL,
	ProductID	CHAR(10)	NOT NULL,
	Quantity	INTEGER		NOT NULL,
	ItemPrice	DECIMAL(8,2)NOT NULL
);
GO
--Insert Satements
GO

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000001','Village Toys','200 Oak Lane','Wellington','09-389-2356','John Smith','sales@villagetoys.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000002','Kids Place','333 Tahunanui Drive','Nelson','03-545-6333','Michelle Green');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000003','Fun4All','1 Sunny Place','Nelson','03-548-2285','Jim Jones','jjones@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact,CustEmail)
VALUES('1000000004','Fun4All','829 Queen Street','Auckland','09-368-7894','Denise L. Stephens','dstephens@fun4all.co.nz');

INSERT INTO Customer(CustID,CustName,CustAddress,CustCity,CustPhone,CustContact)
VALUES('1000000005','The Toy Store','50 Papanui Road','Christchurch','04-345-4545','Kim Howard');


INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20005,'1999/5/1','1000000001');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20006,'1999/1/12','1000000003');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20007,'1999/1/30','1000000004');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20008,'1999/2/3','1000000005');

INSERT INTO OrderEntry(OrderID,OrderDate,CustID)
VALUES(20009, '1999/2/8','1000000001');


INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRS01','Bears R Us','123 Main Street','Richmond','03-523-8871');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('BRE02','Bear Emporium','500 Park Street','Auckland','06-396-8854');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('DLL01','Doll House Inc.','555 High Street','Motueka','03-455-7898');

INSERT INTO Vendor(VendorID, VendorName, VendorAddress, VendorCity, VendorPhone)
VALUES('FRB01','Furball Inc.','1 Clifford Avenue','Nelson','03-546-9978');


INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,1,'BR01',100,5.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20005,2,'BR03',100,10.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,1,'BR01',20,5.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,2,'BR02',10,8.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20006,3,'BR03',10,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,1,'BR03',50,11.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,2,'BNBG01',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,3,'BNBG02',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,4,'BNBG03',100,2.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20007,5,'RGAN01',50,4.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,1,'RGAN01',5,4.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,2,'BR03',5,11.99);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,3,'BNBG01',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,4,'BNBG02',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20008,5,'BNBG03',10,3.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,1,'BNBG01',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,2,'BNBG02',250,2.49);

INSERT INTO OrderItem(OrderID,OrderItem,ProductID,Quantity,ItemPrice)
VALUES(20009,3,'BNBG03',250,2.49);


INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR01', 'BRS01', '8 inch teddy bear',5.99,'8 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR02', 'BRS01', '12 inch teddy bear',8.99,'12 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BR03', 'BRS01', '18 inch teddy bear',11.99,'18 inch teddy bear, comes with cap and jacket');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG01', 'DLL01', 'Fish bean bag toy',3.49,'Fish bean bag toy, complete with bean bag worms with which to feed it');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG02', 'DLL01', 'Bird bean bag toy',3.49,'Bird bean bag toy, eggs are not included');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('BNBG03', 'DLL01', 'Rabbit bean bag toy',3.49,'Rabbit bean bag toy, comes with bean bag carrots');

INSERT INTO Product(ProductID, VendorID, ProductName, ProductPrice, ProductDesc)
VALUES('RGAN01', 'DLL01', 'Raggedy Ann',4.99,'18 inch Raggedy Ann doll');
GO

--ALTER TABLES
ALTER TABLE Customer
	ADD CONSTRAINT pk_customer PRIMARY KEY (CustID);
GO

ALTER TABLE OrderEntry
	ADD CONSTRAINT PK_OrderEntry_OrderID PRIMARY KEY (OrderID);
GO
ALTER TABLE OrderEntry
	ADD CONSTRAINT FK_OrderEntry_CustID FOREIGN KEY (CustID) REFERENCES Customer(CustID);
GO

ALTER TABLE Vendor
    ADD CONSTRAINT pk_vendor PRIMARY KEY (VendorID);
GO

ALTER TABLE Product
    ADD CONSTRAINT pk_product PRIMARY KEY (ProductID);
GO

ALTER TABLE Product
	ADD CONSTRAINT fk_Product_VendorID FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID);
GO

ALTER TABLE OrderItem
	ADD CONSTRAINT fk_OrderItem_OrderID FOREIGN KEY (OrderID) REFERENCES OrderEntry(OrderID);
GO
ALTER TABLE OrderItem
	ADD CONSTRAINT fk_OrderItem_ProductID FOREIGN KEY (ProductID) REFERENCES Product(ProductID);	
GO

--SQL SERVER QUERY 1
SELECT VendorID, ProductName
FROM Product
WHERE VendorID <> 'DLL01';
--SQL SERVER QUERY 2
SELECT ProductName, ProductPrice
FROM Product
WHERE ProductPrice BETWEEN 5 AND 10;
--SQL SERVER QUERY 3
SELECT ProductName, ProductPrice
FROM Product
WHERE (VendorID = 'DLL01' OR VendorID = 'BRS01') AND ProductPrice >= 10;
--SQL SERVER QUERY 4
SELECT AVG(ProductPrice) FROM Product;
--SQL SERVER QUERY 5
SELECT COUNT(CustID) FROM Customer;
--SQL SERVER QUERY 6
SELECT COUNT(CustEmail) FROM Customer;
--SQL SERVER QUERY 7
SELECT COUNT(ProductID), MIN(ProductPrice), MAX(ProductPrice), AVG(ProductPrice) 
FROM Product;
--SQL SERVER JOIN QUERY 8
SELECT v.VendorName, p.ProductName, p.ProductPrice
FROM Vendor v
JOIN Product p ON v.VendorID = p.VendorID;
--SQL SERVER JOIN QUERY 9
--GIVEN INSERT DATA PROVIDED TO ME IS INCORRECT FOR THIS QUERY
SELECT p.ProductName, v.VendorName, p.ProductPrice, o.quantity
FROM product p 
JOIN Vendor v ON p.VendorID = v.VendorID 
JOIN OrderItem o ON p.ProductID = o.ProductID WHERE o.OrderID = 20007;
--SQL SERVER SUB QUERY 10
SELECT CustName, CustContact
FROM Customer WHERE CustID IN (
    SELECT oe.CustID
    FROM OrderEntry oe
    JOIN OrderItem o ON oe.OrderID = o.OrderID
    WHERE o.ProductID = 'RGAN01'
);
--SQL SERVER SUB QUERY 11

SELECT c.CustName, c.CustCity,
    (SELECT COUNT(*) 
     FROM OrderEntry
     WHERE CustID = c.CustID) AS TotalOrder
FROM Customer c;

--SQL SERVER SUB QUERY 12
SELECT CustName, CustContact, CustEmail
FROM Customer WHERE CustCity = 'Nelson' OR CustCity = 'Wellington'
UNION
SELECT CustName, CustContact, CustEmail
FROM Customer WHERE CustName = 'Fun4ALL'
ORDER BY CustName, CustContact ASC

--SQL SERVER VIEWS QUERY 13
DROP VIEW IF EXISTS vProductCustomer
GO

CREATE VIEW vProductCustomer AS
SELECT DISTINCT c.CustName, c.CustContact
FROM Customer c
JOIN OrderEntry oe ON c.CustID = oe.CustID
JOIN OrderItem o ON oe.OrderID = o.OrderID
WHERE o.ProductID = 'RGAN01'
GO
SELECT * FROM vProductCustomer

--SQL SERVER VIEWS QUERY 14
--FOR THIS QUERY THIS NEEDS TO BE EXECUTED BY ITS SELF IN PIECES AS IT IS REFUSING TO RUN AS A WHOLE
INSERT INTO Customer(CustID, CustName, CustPhone) VALUES ('1000000006', 'The Toy Emporium', '09-546-8552')GO--DROP VIEWS IF EXISTSDROP VIEW IF EXISTS vCustomerMailingLabelGO--CREATE THE VIEWCREATE VIEW vCustomerMailingLabel ASSELECT CustName, CustAddress, CustCity, CustPhoneFROM Customer WHERE CustAddress != '' OR CustCity != ''GO--QUERY THE VIEWSELECT * FROM vCustomerMailingLabel