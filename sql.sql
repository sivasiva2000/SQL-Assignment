create database MyCompany;
use MyCompany;
create table Customers(CustomerID int primary key,CustomerName varchar(55),ContactName varchar(50), Address varchar(50),city varchar(55), postalCode int, country varchar(50));
insert into Customers(CustomerID,CustomerName,ContactName,Address,city,postalCode,country)
values(1,"Alfreds Futterkiste","Maria Anders","Obere Str. 57","Berin",12209,"Germany"), 
	  (2,"Ana Trujillo Emparedados y helados","Ana Trujilio","Avida, de la Constitución 2222","Mexico D.F",05021,"Mexico"), 
	  (3,"Antonio Moreno Taqueria","Antonio Moreno","Mataderos 2312","Mexico D.F",05023,"Mexico");
select * from Customers;
-- drop table Orders;
create table Orders(OrderID int PRIMARY KEY,CustomerID int, EmployeeID int,orderDate date,shipperID int,FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, orderDate, shipperID)
VALUES
    (10308, 2, 7, '1996-09-18', 3),
    (10309, 37, 3, '1996-09-19', 1),
    (10310, 77, 8, '1996-09-20', 2);

-- drop table shippers;
create table Shipper(shipperID int,shipperName varchar(55),phone double);
insert into Shipper(shipperID,shipperName,phone)
values(1,"speed Express",5055559831),
      (2,"United Package",5035553199),
      (3,"Federal shipping",5035559931);
select * from Shipper;

SELECT * FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Customers.FirstName = 'Ana' AND Orders.OrderDate > '1996-01-01';
