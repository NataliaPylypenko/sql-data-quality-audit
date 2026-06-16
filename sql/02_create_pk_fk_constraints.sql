USE FunData

--CREATE CONSTRAINTS (PK/FK)

--Code to replace field type

/*
ALTER TABLE [TableName]
ALTER COLUMN [ColumnName] NEW_TYPE;
*/


--To assign a Primary Key (PK)

/*
ALTER TABLE [TableName] 
ALTER COLUMN [ColumnName] INT NOT NULL;

ALTER TABLE [TableName]
ADD CONSTRAINT PK_ProductType
	PRIMARY KEY ([ColumnName]);
*/

/*
ALTER TABLE Credit 
ALTER COLUMN [Customer Credit ID] INT NOT NULL;

ALTER TABLE Customer 
ALTER COLUMN [Customer ID] INT NOT NULL;

ALTER TABLE Customer
ADD CONSTRAINT PK_Customer
	PRIMARY KEY ([Customer ID]);

ALTER TABLE Employee 
ALTER COLUMN [Employee ID] INT NOT NULL;

ALTER TABLE Employee
ADD CONSTRAINT PK_Employee
	PRIMARY KEY ([Employee ID]);

ALTER TABLE [Employee Addresses]
ALTER COLUMN [Employee ID] INT NOT NULL;

ALTER TABLE [Employee Addresses]
ADD CONSTRAINT PK_EmployeeAddresses 
	PRIMARY KEY ([Employee ID]);

ALTER TABLE Orders 
ALTER COLUMN [Order ID] INT NOT NULL;

ALTER TABLE Orders
ADD CONSTRAINT PK_Orders
	PRIMARY KEY ([Order ID]);

ALTER TABLE Product 
ALTER COLUMN [Product ID] INT NOT NULL;

ALTER TABLE Product
ADD CONSTRAINT PK_Product
	PRIMARY KEY ([Product ID]);

ALTER TABLE ProductType
ALTER COLUMN [Product Type ID] INT NOT NULL;

ALTER TABLE ProductType
ADD CONSTRAINT PK_ProductType
	PRIMARY KEY ([Product Type ID]);

ALTER TABLE Supplier
ALTER COLUMN [Supplier ID] INT NOT NULL;

ALTER TABLE Supplier
ADD CONSTRAINT PK_Supplier
	PRIMARY KEY ([Supplier ID]);
*/


--To assign a Foreign Key (FK)

/*
ALTER TABLE [Таблиця_з_полем_FK]
ADD CONSTRAINT [Назва_Обмеження_FK]
    FOREIGN KEY ([Колонка_FK])
    REFERENCES [Таблиця_з_полем_PK] ([Колонка_PK]);
*/

/*
ALTER TABLE [Credit]
ADD CONSTRAINT FK_Credit_Customer
	FOREIGN KEY ([Customer Credit ID])
	REFERENCES [Customer] ([Customer ID]);

ALTER TABLE [Employee]
ADD CONSTRAINT FK_Employee_Supervisor
    FOREIGN KEY ([Supervisor ID]) 
    REFERENCES [Employee] ([Employee ID]);

ALTER TABLE [Employee Addresses] 
ADD CONSTRAINT FK_EmployeeAddresses_Employee
	FOREIGN KEY ([Employee ID])
	REFERENCES [Employee] ([Employee ID]);

ALTER TABLE [List Totals] 
ADD CONSTRAINT FK_ListTotals_Orders
	FOREIGN KEY ([Order ID])
	REFERENCES [Orders] ([Order ID]);

ALTER TABLE [Orders] 
ADD CONSTRAINT FK_Orders_Customer
	FOREIGN KEY ([Customer ID])
	REFERENCES [Customer] ([Customer ID]);

ALTER TABLE [Orders] 
ADD CONSTRAINT FK_Orders_Employee
	FOREIGN KEY ([Employee ID])
	REFERENCES [Employee] ([Employee ID]);

ALTER TABLE [Orders Detail] 
ADD CONSTRAINT FK_OrdersDetail_Order
	FOREIGN KEY ([Order ID])
	REFERENCES [Orders] ([Order ID]);

ALTER TABLE [Orders Detail] 
ADD CONSTRAINT FK_OrdersDetail_Product
	FOREIGN KEY ([Product ID])
	REFERENCES [Product] ([Product ID]);

ALTER TABLE [Product] 
ADD CONSTRAINT FK_Product_Product Type
	FOREIGN KEY ([Product Type ID])
	REFERENCES [Product Type] ([Product Type ID]);

ALTER TABLE [Product] 
ADD CONSTRAINT FK_Product_Supplier
	FOREIGN KEY ([Supplier ID])
	REFERENCES [Supplier] ([Supplier ID]);

ALTER TABLE [Purchases] 
ADD CONSTRAINT FK_Purchases_Product
	FOREIGN KEY ([Product ID])
	REFERENCES [Product] ([Product ID]);
*/
