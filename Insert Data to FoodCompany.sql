

---INSERT BLOCK-----
--INSERT Pack Cook
INSERT INTO Packs VALUES (1, '100 AND 101 AND 102', 'Cooking ingredient', '100, 101, 102'); -- Failed

--Insert Data to Sold Table
INSERT INTO Sold VALUES (1, 100, NULL, '4-12-2020', 80, 100);

--Insert Data to the first bill
INSERT INTO Bill VALUES (01, 100, 100, 001, '12-4-2020', 'Christchurch', '12-4-2020', '100');


--INSERT Data to Branches - Step 1

INSERT INTO Branches VALUES (100, 'Christchurch', 1, 'Main Street', 'CPD', 'Chirstchurch', 0271234567);
INSERT INTO Branches VALUES (101, 'Timaru', 100, 'North Street', 'West End', 'Timaru', 0219876543);
INSERT INTO Branches VALUES (102, 'Dunedin', 89, 'Colombo Street', 'Linwood', 'Dunedin', 0211232233);

SELECT * FROM Branches;

--INSERT Data to Staffs - Step 2

INSERT INTO Staffs VALUES (006, 100, 101, 'Available', 'LaRotonda', 'William', '05-15-1996', 0271234567, 'employee02@food.com', 0);
INSERT INTO Staffs VALUES (002, 100, 100, 'Available', 'Carter', 'Michelle', '05-12-1993', 0272611123, 'employee03@food.com', 0);
INSERT INTO Staffs VALUES (007, 101, 102, 'Available', 'Dietrich', 'Jenna', '11-13-1992', 0214633424, 'employee04@food.com', 0);
INSERT INTO Staffs VALUES (004, 102, 100, 'Available', 'Strong', 'Caitrin', '12-14-1996', 0211918193, 'employee05@food.com', 0);
INSERT INTO Staffs VALUES (005, 101, 101, 'Off', 'Valentin', 'Jackie', '09-15-1993', 0224055171, 'employee06@food.com', 1);

-- Insert Data to Position - Step 3

INSERT INTO Positions VALUES (100, 'Saler', 20, 'Communication');
INSERT INTO Positions VALUES (101, 'Packer', 20, 'Teamwork');
INSERT INTO Positions VALUES (102, 'Shipper', 22, 'Driving');


--Insert Data to Histories Table - Step 4
INSERT INTO Histories(history_id) VALUES (0);

--Insert Data to Products - Step 5
INSERT INTO Products VALUES (100, 100, 'Caramel', '04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Products VALUES (101, 100, 'Corn', '04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Products VALUES (102, 100, 'Sugar', '04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Products VALUES (103, 101, 'Caramel', '04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Products VALUES (104, 101, 'Corn', '04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Products VALUES (105, 101, 'Sugar', '04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Products VALUES (106, 102, 'Caramel', '04/12/2020', '01/01/2021', 'Small', 10);
INSERT INTO Products VALUES (107, 102, 'Corn', '04/12/2020', '01/01/2021', 'Small', 2);
INSERT INTO Products VALUES (108, 102, 'Sugar', '04/12/2020', '01/01/2021', 'Medium', 5);
INSERT INTO Products VALUES (110, 102, 'Salt', '04/12/2020', '01/01/2021', 'Small', 3);

--Insert Data for Customer - Step 6
INSERT INTO Customer VALUES (001, NULL, 'Gonzales', 'Ricardo', 'F', '10-02-1991', 12, 'Street 1', 'CPD', 'Christchurch', 'Customer001@gmail.com', 0213334567, 'Cash');
INSERT INTO Customer VALUES (002, NULL, 'Nguyen', 'Dheepa', 'M', '11-08-1991', 112, 'Street 3', 'Roxbugh', 'Timaru', 'Customer002@gmail.com', 0213334568, 'Creadit');
INSERT INTO Customer VALUES (003, NULL, 'Onque', 'Jasmine', 'F', '12-07-1991', 132, 'Street 4', 'West End', 'Dunedin', 'Customer003@gmail.com', 0213334569, 'Creadit');
INSERT INTO Customer VALUES (004, NULL, 'Riordan', 'Michael', 'M', '01-05-1991', 512, 'Street 5', 'East', 'Christchurch', 'Customer004@gmail.com', 0213334561, 'Cash');
INSERT INTO Customer VALUES (005, NULL, 'Terry', 'Sharlene', 'F', '10-03-1991', 112, 'Street 6', 'CPD', 'Christchurch', 'Customer005@gmail.com', 0213334562, 'E-Wallet');



--Insert Data for Membership
INSERT INTO Membership VALUES (01, 002, 'Gold');

------UPDATE BLOCK----------

--Try to change type of values of product_id on Packs
UPDATE Packs
SET product_id = 'VARCHAR(20)'
WHERE product_id = 'INT';
--Update Customer 002 become membership
UPDATE Customer
SET member_id = '01'
WHERE customer_id = '002';

-- Update Product_id because same product but have different ID
-- can not update because Primary Key cant duplicate
Update Products
SET product_code = '100'
WHERE product_name = 'Caramel';
Update Products
SET product_code = '101'
WHERE product_name = 'Corn';
Update Products
SET product_code = '102'
WHERE product_name = 'Sugar';
Update Products
SET product_code = '103'
WHERE product_name = 'Salt';
 
---- ALTER BLOCK--------



--add product_id to Sold and Set it become FK
ALTER TABLE Sold
ADD product_id INT;
ALTER TABLE Sold
ADD FOREIGN KEY (product_id)
REFERENCES Products (product_id);

--add product_code to Sold
ALTER TABLE Sold
ADD product_code VARCHAR(10);

--Add product_code to Packs
ALTER TABLE Packs
ADD product_code VARCHAR(10);

--add ROW for History Table
ALTER TABLE Histories
ADD staff_id INT;

--Add Column Product_code for each product
ALTER TABLE Products
ADD product_code VARCHAR(10);

--Add product_code to Bill 
ALTER TABLE Bill
ADD product_code VARCHAR(10);

--and SET it as FK
ALTER TABLE Packs
ADD FOREIGN KEY (product_code)
REFERENCES Products (product_code); -- failed

-- add FK for staff_id in Histories table
ALTER TABLE Histories
ADD FOREIGN KEY (staff_id)
REFERENCES Staffs (staff_id)
ON DELETE SET NULL;

--Check data from Table
SELECT * FROM Staffs;
SELECT * FROm Branches;
SELECT * FROM Bill;
SELECT * FROM Positions;
SELECT * FROM Histories;
SELECT * FROM Products ORDER BY product_code;
SELECT * FROM Customer;
SELECT * FROM Sold;


SELECT f_name FROM Customer
SELECT branch_id FROM Sold; 