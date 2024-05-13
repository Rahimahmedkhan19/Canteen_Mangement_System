Create database canteen_management_system;
use canteen_management_system;
CREATE TABLE MenuItems (
    ItemID INT PRIMARY KEY,
    ItemName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ItemID INT,
    Quantity INT,
    OrderDate DATE,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(100),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    AttendanceDate DATE,
    ClockInTime TIME,
    ClockOutTime TIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Stock (
    StockID INT PRIMARY KEY,
    ItemID INT,
    Quantity INT,
    LastUpdated DATE,
    FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);
CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(100),
    ContactPerson VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    Address VARCHAR(255)
);
CREATE TABLE PurchaseOrders (
    OrderID INT PRIMARY KEY,
    VendorID INT,
    ItemID INT,
    Quantity INT,
    OrderDate DATE,
    DeliveryDate DATE,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID),
    FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);
CREATE TABLE Expenses (
    ExpenseID INT PRIMARY KEY,
    ExpenseDate DATE,
    Description VARCHAR(255),
    Amount DECIMAL(10, 2)
);







