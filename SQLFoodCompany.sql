CREATE TABLE Positions (
	positionID INT PRIMARY KEY,
	jobTitle VARCHAR(20),
	payRate MONEY,
	skillSets VARCHAR(100)
);

CREATE TABLE Branch (
	branchID INT PRIMARY KEY,
	employeeID INT,
	branchName VARCHAR(30),
	streetNum int,
	streetName VARCHAR(50),
	suburb VARCHAR(20),
	city VARCHAR(20),
	phone VARCHAR(15),
	staffCount INT
);

CREATE TABLE Employee (
	employeeID INT PRIMARY KEY,
	positionID INT,
	branchID INT,
	historyID BIT,
	workStatus VARCHAR(10),
	fName VARCHAR(20),
	lName VARCHAR(20),
	streetNum INT,
	streetName VARCHAR(50),
	suburb VARCHAR(20),
	city VARCHAR(20),
	dOB DATE,
	mobile VARCHAR(15),
	email VARCHAR(50),
	FOREIGN KEY(positionID) REFERENCES Positions(positionID),
	FOREIGN KEY(branchID) REFERENCES Branch(branchID),
);

CREATE TABLE History (
	historyID BIT PRIMARY KEY,
	employeeID INT,
	startDate DATE,
	endDate DATE,
	note TEXT,
	FOREIGN KEY (employeeID) REFERENCES Employee(employeeID)
);


ALTER TABLE Employee
ADD FOREIGN KEY (historyID)
REFERENCES History(historyID)
ON DELETE SET NULL;

ALTER TABLE History
ADD FOREIGN KEY (employeeID)
REFERENCES Employee (employeeID);

ALTER TABLE Branch
ADD FOREIGN KEY (employeeID)
REFERENCES Employee (employeeID);

CREATE TABLE Item (
	itemID INT PRIMARY KEY,
	branchID INT,
	itemName VARCHAR(50),
	ingredients TEXT,
	mfd DATE,
	dateExp DATE,
	size VARCHAR(10),
	price MONEY,
	FOREIGN KEY(branchID) REFERENCES Branch (branchID)
);

CREATE TABLE Pack (
	packID INT PRIMARY KEY,
	itemID INT,
	packName VARCHAR(20),
	FOREIGN KEY(itemID) REFERENCES Item(itemID)
);

CREATE TABLE PackItem (
	packID INT,
	itemID INT,
	PRIMARY KEY(packID, itemID),
	FOREIGN KEY (packID) REFERENCES Pack(packID),
	FOREIGN KEY (itemID) REFERENCES Item(itemID)
);

CREATE TABLE Orders (
	orderID INT PRIMARY KEY,
	customerID INT,
	employeeID INT,
	branchID INT,
	itemID INT,
	packID INT,
	orderDate DATE,
	pickBranch VARCHAR(30),
	pickDate DATE,
	FOREIGN KEY (employeeID) REFERENCES Employee(employeeID),
	FOREIGN KEY (branchID) REFERENCES Branch(BranchID),
	FOREIGN KEY (itemID) REFERENCES Item(itemID),
	FOREIGN KEY (packID) REFERENCES Pack(packID)
);

CREATE TABLE Bill (
	branchID INT,
	orderID INT,
	paymentType VARCHAR(5),
	total MONEY,
	PRIMARY KEY(branchID, orderID),
	FOREIGN KEY(branchID) REFERENCES Branch(BranchID),
	FOREIGN KEY(orderID) REFERENCES Orders(orderID)
);

CREATE TABLE Customer (
	customerID INT PRIMARY KEY,
	accountID INT,
	fName VARCHAR(20),
	lName VARCHAR(20),
	sex VARCHAR(6),
	dOB DATE,
	streetNum INT,
	streetName VARCHAR(70),
	suburb VARCHAR(50),
	city VARCHAR(20),
	customerType VARCHAR(50),
	mobile VARCHAR(15),
	creaditStatus VARCHAR(20)
);

CREATE TABLE Accounts (
	accountID INT PRIMARY KEY,
	customerID INT,
	accBalance VARCHAR(10),
	lastPayDate DATE,
	lastPayTotal MONEY,
	paymentType VARCHAR(5),
	FOREIGN KEY(customerID) REFERENCES Customer(customerID)
);

ALTER TABLE Customer
ADD FOREIGN KEY (accountID)
REFERENCES Accounts (accountID);

ALTER TABLE Orders
ADD FOREIGN KEY (customerID)
REFERENCES Customer (customerID);


