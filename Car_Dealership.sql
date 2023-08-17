	CREATE TABLE Salesperson_AD (
    SalespersonID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15)
);

CREATE TABLE Customer_AD (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15),
    Address VARCHAR(100)
);

CREATE TABLE Car_AD (
    CarID serial PRIMARY KEY,
    SerialNumber VARCHAR(50) UNIQUE,
    Model VARCHAR(50),
    Make VARCHAR(50),
    Year INT
);

CREATE TABLE Invoice_AD (
    InvoiceID INT PRIMARY KEY,
    Date DATE,
    CarID INT,
    FOREIGN KEY (CarID) REFERENCES Car_AD (CarID),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer_AD (CustomerID),
    SalespersonID INT,
    FOREIGN KEY (SalespersonID) REFERENCES Salesperson_AD(SalespersonID)
);

CREATE TABLE Mechanic_AD (
    MechanicID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(15)
);

CREATE TABLE Service_AD (
    ServiceID INT primary key UNIQUE,
    Date DATE,
    CarID INT,
    FOREIGN KEY (CarID) REFERENCES Car_AD (CarID),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer_AD (CustomerID),
    MechanicID INT,
    FOREIGN KEY (MechanicID) REFERENCES Mechanic_AD (MechanicID)
);

create table parts_used_AD (
	Part_id int PRIMARY KEY,
	serviceid Int,
	foreign key (serviceid) references service_ad(serviceid),
	partname varchar (50),
	quantity int 
	Mechanice ID int,
	FOREIGN KEY (MechanicID) REFERENCES Mechanic_AD (MechanicID)
); 

INSERT INTO Salesperson_AD (SalespersonID, Name, Phone)
VALUES
(1, 'John Smith', '123-456-7890'),
(2, 'Jane Doe', '987-654-3210');

   
INSERT INTO Customer_AD (CustomerID, Name, Phone, Address)
VALUES
(1, 'Mike Johnson', '525-123-4567', '123 Main St'),
(2, 'Julie Brown', '555-987-6543', '456 Oak Ave');

    
INSERT INTO Car_AD (Car_ID, SerialNumber, Model, Make, Year)
VALUES
(01, 'ABC123', 'Civic', 'Honda', 2023),
(02, 'XYZ789', 'Accord', 'Honda', 2022);

INSERT INTO Invoice_ad (InvoiceID, Date, CarID, CustomerID, SalespersonID)
VALUES
(1, '2023-08-01', 1, 1, 1),
(2, '2023-08-02', 2, 2, 2);

INSERT INTO Mechanic_AD (MechanicID, Name, Phone)
VALUES
(1, 'Robert Johnson', '111-222-3333'),
(2, 'Susan Lee', '444-555-6666');


INSERT INTO Service_AD (ServiceID, Date, CarID, CustomerID, MechanicID)
VALUES
(1, '2023-08-05', 1, 1, 1),
(2, '2023-08-06', 2, 2, 2);









