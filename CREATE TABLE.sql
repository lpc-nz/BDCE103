CREATE TABLE Customer (
	customer_id INT PRIMARY KEY,
	member_id INT,
	f_name VARCHAR(20),
	l_name VARCHAR(20),
	sex VARCHAR(6),
	dOB DATE,
	street_num VARCHAR(10),
	street_name VARCHAR(70),
	suburb VARCHAR(20),
	city VARCHAR(50),
	email VARCHAR(50),
	mobile VARCHAR(15),
	creadit_status VARCHAR(15) 
);
-- Set FK for member_id
ALTER TABLE Customer
ADD FOREIGN KEY(member_id)
REFERENCES Membership(member_id)
ON DELETE SET NULL;

CREATE TABLE Bill (
	order_id INT PRIMARY KEY,
	branch_id INT,
	product_id INT,
	customer_id INT,
	order_date DATE,
	pick_branch VARCHAR(20),
	pick_date DATE
	FOREIGN KEY(branch_id) REFERENCES Branches (branch_id),
	FOREIGN KEY(product_id) REFERENCES Products (product_id),
	FOREIGN KEY(customer_id) REFERENCES Customer (customer_id)
);

CREATE TABLE Sold (
	staff_id INT,
	branch_id INT,
	pack_id INT,
	order_date DATE,
	total MONEY,
	PRIMARY KEY(staff_id, branch_id),
	FOREIGN KEY(staff_id) REFERENCES Staffs (staff_id),
	FOREIGN KEY(branch_id) REFERENCES Branches (branch_id),
	FOREIGN KEY(pack_id) REFERENCES Packs (pack_id)
);

CREATE TABLE Packs (
	pack_id INT PRIMARY KEY,
	product_id INT,
	note TEXT,
	FOREIGN KEY(product_id) REFERENCES Products (product_id) ON DELETE SET NULL
);

CREATE TABLE Products (
	product_id INT PRIMARY KEY,
	branch_id INT,
	product_name VARCHAR(50),
	mfd DATE,
	date_exp DATE,
	size VARCHAR(10),
	price MONEY,
	FOREIGN KEY(branch_id) REFERENCES Branches (branch_id) ON DELETE SET NULL
);

CREATE TABLE Branches (
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(30),
	street_num VARCHAR(10),
	street_name VARCHAR(50),
	suburb VARCHAR(20),
	city VARCHAR(20),
	phone VARCHAR(15)
);

CREATE TABLE Staffs (
	staff_id INT PRIMARY KEY,
	position_id INT,
	branch_id INT,
	work_status VARCHAR(10),
	f_name VARCHAR(20),
	l_name VARCHAR(20),
	dOB DATE,
	mobile VARCHAR(15),
	email VARCHAR(50),
	history_id BIT,
	FOREIGN KEY(position_id) REFERENCES Positions (position_id) ON DELETE SET NULL,
	FOREIGN KEY(branch_id) REFERENCES Branches (branch_id) ON DELETE SET NULL
);

CREATE TABLE Positions (
	position_id INT PRIMARY KEY,
	job_title VARCHAR(20),
	pay_rate MONEY,
	skills VARCHAR(100)
);

CREATE TABLE Histories (
	history_id BIT PRIMARY KEY,
	date_start DATE,
	date_end DATE,
	note TEXT  
);

CREATE TABLE Membership (
	member_id INT PRIMARY KEY,
	customer_id INT,
	mem_level VARCHAR(10)
);
--Set FK for customer_id of Customer
ALTER TABLE Membership
ADD FOREIGN KEY(customer_id)
REFERENCES Customer(customer_id)
ON DELETE SET NULL;