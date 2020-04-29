-- Insert data to Positions Table
INSERT INTO Positions VALUES (100, 'Saler', 20, 'Communication');
INSERT INTO Positions VALUES (101, 'Packer', 20, 'Teamwork');
INSERT INTO Positions VALUES (102, 'Shipper', 22, 'Driving');
SELECT * FROM Positions;
Go

--Insert Data to Branch
INSERT INTO Branch VALUES (100, NULL, 'Christchurch', 1, 'Main Street', 'CPD', 'Chirstchurch', 0271234567, NULL);
INSERT INTO Branch VALUES (101, NULL, 'Timaru', 100, 'North Street', 'West End', 'Timaru', 0219876543, NULL);
INSERT INTO Branch VALUES (102, NULL, 'Dunedin', 89, 'Colombo Street', 'Linwood', 'Dunedin', 0211232233, NULL);

SELECT * FROM Branch;
Go

--Insert Data to Item

INSERT INTO Item VALUES (100, 100, 'Caramel', NULL, '04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Item VALUES (101, 100, 'Corn', NULL, '04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Item VALUES (102, 100, 'Sugar', NULL, '04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Item VALUES (103, 101, 'Caramel', NULL, '04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Item VALUES (104, 101, 'Corn', NULL,'04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Item VALUES (105, 101, 'Sugar', NULL,'04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Item VALUES (106, 102, 'Caramel', NULL,'04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Item VALUES (107, 102, 'Corn', NULL,'04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Item VALUES (108, 102, 'Sugar', NULL,'04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Item VALUES (110, 102, 'Salt', NULL,'04/12/2020', '01/01/2021', 'Small', 3);
SELECT * FROM Item;
Go

--Insert Data to Pack
INSERT INTO Pack VALUES (1, 'Soup Caramel');
INSERT INTO Pack VALUES (2, 'Baking');
INSERT INTO Pack VALUES (3, 'Corn Soup');

SELECT * FROM Pack;

--Insert Data to PackItem
INSERT INTO PackItem VALUES (1,100);
INSERT INTO PackItem VALUES (1,102);
INSERT INTO PackItem VALUES (2,100);
INSERT INTO PackItem VALUES (2,101);
INSERT INTO PackItem VALUES (2,102);
INSERT INTO PackItem VALUES (3,101);
INSERT INTO PackItem VALUES (3,102);
SELECT * FROM PackItem;

--Insert Data to Employee Table
INSERT INTO Employee VALUES (006, 100, 101, NULL, 'LaRotonda', 'William', 01, 'Street 1', 'North', 'Timaru', '05-15-1996', 0271234567, 'employee02@food.com');
INSERT INTO Employee VALUES (002, 100, 100, NULL, 'Carter', 'Michelle', 112, 'Street 112', 'West', 'Christchurch', '05-12-1993', 0272611123, 'employee03@food.com');
INSERT INTO Employee VALUES (007, 101, 102, NULL, 'Dietrich', 'Jenna', 89, 'North Street', 'West', 'Dunedin', '11-13-1992', 0214633424, 'employee04@food.com');
INSERT INTO Employee VALUES (004, 102, 100, NULL, 'Strong', 'Caitrin', 13, 'Candidate', 'South', 'Christchurch', '12-14-1996', 0211918193, 'employee05@food.com');
INSERT INTO Employee VALUES (005, 101, 101, NULL, 'Valentin', 'Jackie',1010, 'Main street', 'CPD', 'Timaru', '09-15-1993', 0224055171, 'employee06@food.com');

SELECT * FROM Employee;

--Insert data to Customer
INSERT INTO Customer VALUES (001, NULL, 'Gonzales', 'Ricardo', 'F', '10-02-1991', 12, 'Street 1', 'CPD', 'Christchurch', 'Customer001@gmail.com', 0213334567, 'Cash');
INSERT INTO Customer VALUES (002, NULL, 'Nguyen', 'Dheepa', 'M', '11-08-1991', 112, 'Street 3', 'Roxbugh', 'Timaru', 'Customer002@gmail.com', 0213334568, 'Credit');
INSERT INTO Customer VALUES (003, NULL, 'Onque', 'Jasmine', 'F', '12-07-1991', 132, 'Street 4', 'West End', 'Dunedin', 'Customer003@gmail.com', 0213334569, 'Credit');
INSERT INTO Customer VALUES (004, NULL, 'Riordan', 'Michael', 'M', '01-05-1991', 512, 'Street 5', 'East', 'Christchurch', 'Customer004@gmail.com', 0213334561, 'Cash');
INSERT INTO Customer VALUES (005, NULL, 'Terry', 'Sharlene', 'F', '10-03-1991', 112, 'Street 6', 'CPD', 'Christchurch', 'Customer005@gmail.com', 0213334562, 'E-Wallet');

SELECT * FROM Customer;

--Insert Data to Order
INSERT INTO Orders VALUES (1, 001, 006, 100, 100, NULL, '04/01/2020', 'Christchurch', '04/01/2020');
INSERT INTO Orders VALUES (2, 002, 002, 101, 100, NULL, '04/01/2020', 'Timaru', '04/01/2020');
INSERT INTO Orders VALUES (3, 003, 004, 102, NULL, 1, '04/01/2020', 'Dunedin', '04/01/2020');

SELECT * FROM Orders;
GO
SELECT employeeID FROM Employee;
GO

--Insert to Bills table
INSERT INTO Bill VALUES (100, 1, 'Cash', 10);
INSERT INTO Bill VALUES (101, 2, 'Card', 10);
INSERT INTO Bill VALUES (102, 3, 'Card', 15);

SELECT * FROM Bill;
GO
SELECT * FROM Orders;
GO

SELECT fName as 'First Name' FROM Customer WHERE customerID = 1;