CREATE DATABASE umuzi:

USE umuzi;

CREATE TABLE Customers(
  CustomerID int (11) NOT NULL AUTO_INCREMENT,
  FirstName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  Gender varchar(20) DEFAULT NULL,
  Address varchar(200) DEFAULT NULL,
  Phone bigint(20) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  City varchar(20)
  Country varchar(50) DEFAULT NULL,
  PRIMARY KEY(CustomerID)
);
 
INSERT INTO Customers VALUES(1,'John','Hibert','Male','284 chaucer st',84789657,'john@gmail.com','Johannesburg','South Africa'),
                            (2,'Thando','Sithole','Female','240 Sect 1',794445584,'thando@gmail.com','Cape Town','South Africa'),
                            (3,'Leon','Glen','Male','81 Everton RD,Gilits',820332830,'Leon@gmail.com','Durban','South Africa'),
                            (4,'charl','Muller','Male','290A Dorset Ecke',44856872553,'Berlin','Germany'),
                            (5,'Julia','Stein','Female','2 Wernerring',448672445058,'Js234@gmail.com','Frankfurt','Germany');




CREATE TABLE Employees( 
  EmployeeID int (11) NOT NULL AUTO_INCREMENT,
  FirstName varchar(50) DEFAULT NULL,
  LastName varchar(50) DEFAULT NULL,
  Email varchar(100) DEFAULT NULL,
  JobTittle varchar(50) DEFAULT NULL,
  PRIMARY KEY(EmployeeID)
);
 
INSERT INTO Employees  VALUES(1,'Kani','Matthew','mat@gmail.com','Manager'),
                             (2,'Lesly','Cronje','LesC@gmail.com','Clerk'),
                             (3,'Gideon','Maduku','m@gmail.com','Account');

CREATE TABLE Orders ( 
  OrderID int (11) NOT NULL AUTO_INCREMENT,
  ProductID int(11) DEFAULT NULL,
  PaymentID int(11) DEFAULT NULL,
  FilfilledByEmployeeID int(11) DEFAULT NULL,
  DateRequired datetime DEFAULT NULL,
  DateShipped datetime  DEFAULT NULL,
  Status varchar(20) DEFAULT NULL,
  PRIMARY KEY(OrderID)
);

INSERT INTO Orders  VALUES(1,1,1,2,'2018-09-05 00:00:00',NULL,'Not shipped'),
                          (2,1,2,2,'2018-09-04 00:00:00','2018-09-03 00:00:00','Shipped'),    
                          (3,3,3,3,'2018-09-06',NULL,'Not shipped'); 


CREATE TABLE Payments( 
  CustomerID int (11) NOT NULL AUTO_INCREMENT,
  PaymentsID int(11) DEFAULT NULL,
  PaymentDate datetime  DEFAULT NULL,
  Amount decimal(10,2)  DEFAULT NULL
  PRIMARY KEY(CustomerID)
);

INSERT INTO Payments  VALUES(1,1,'2018-09-01 00:00:00',150.75),
                            (5,2,'2018-09-03 00:00:00',150.75),    
                            (4,3,'2018-09-03',700.60); 

CREATE TABLE Products( 
  ProductID int (11) NOT NULL AUTO_INCREMENT,
  ProductName varchar(100) DEFAULT NULL,
  Description  varchar(300) DEFAULT NULL,
  BuyPrice  decimal(10,2) DEFAULT NULL,
  PRIMARY KEY(ProductID)
);

INSERT INTO Products  VALUES(1,'Herley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever',150.75),
                            (2,'Classic Car','Turnable front wheels, steering function',550.75),    
                            (3,'Sports car','Turnable front wheels,steering function',700.60); 





