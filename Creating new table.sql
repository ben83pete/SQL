use master; --start in Master Data Base
go
alter database PrsDb set single_user with rollback immediate
go
drop database if exists PrsDb -- PrsDb from master Db if it exists
go
create database PrsDb; -- create the PrsDb
go
use PrsDb; -- switch into the PrsDb
go
-- create table at this point

Create table Users(
	Id int not null Primary Key identity (1,1),
	Username nvarchar(30) not null unique,
	Password nvarchar(30)not null,
	First_Name nvarchar (30) not null,
	Last_Name nvarchar(30) not null,
	Phone nvarchar (12),
	Email nvarchar (100),
	Is_Reviewer bit not null default 0,
	Is_Admin bit not null default 0,
	Active bit not null default 1
);
go

insert into Users
(Username, Password, First_Name, Last_Name)
Values
('Bologna', 'hotdog', 'Oscar', 'Meyer'),
('Michael', 'Halloween', 'William', 'Shatner'),
('ElmStreet', 'friday', 'Freddy', 'Kruger');

go

Create table Vendors(
	Id int not null Primary Key identity (1,1),
	Code nvarchar (4) not null unique,
	Name nvarchar (50) not null,
	Address nvarchar (30),
	City nvarchar (30),
	State nchar(2),
	Zip nvarchar(10),
	Phone nvarchar(12),
	Email nvarchar (50),
	Is_Preferred bit not null default 1,
	Active bit not null default 1
	);
go

Insert into Vendors
	(Code, Name)
Values
	('SHIP', 'Ship It'),
	('CLIK', 'Click Ship'),
	('USPS', 'United States Postal Service');

go

Create table Products (
	Id int not null Primary Key identity (1,1),
	VendorID int not null foreign key references Vendors(ID),
	Part_Number nvarchar(30) not null,
	Name nvarchar(30) not null,
	Price decimal(9,2) not null default 0,
	Unit nvarchar (10) not null default 'Each',
	Photo_Path nvarchar (255),
	Active bit not null default 1,
	);
go

insert into Products
	(VendorID, Part_Number, Name, Price)
values
	(3, '438920', 'Stamps', 0.55),
	(1, '934520', 'Bag', .99),
	(2, '849593', '3x3 Box', 2.99);

go

Create table Requests(
	Id int not null Primary Key identity (1,1),
	UsersId int not null foreign key references Users(id),
	Description nvarchar(80),
	Justificaiton nvarchar(80),
	Reject_Reason nvarchar(80), 
	Delivery_Mode nvarchar (80) default 'Pickup',
	Review_Date date not null default getdate(),
	Status nvarchar(30) not null default 'New'
		check (Status in ('New', 'Review', ' Approved', 'Rejected')),
	Total decimal (11,2) not null default 0,
	Active bit not null default 1,
	);
go

	insert into Requests
		(UsersId, Description)
	Values
		(2, 'Williams order'),
		(1, 'Oscar order')

go

create table Request_Lines(
	Id int not null Primary Key identity (1,1),
	Product_ID int not null foreign key references Products(id),
	Requests_ID int not null foreign key references Requests(id),
	Quantity int not null default 1
	);
go

insert into Request_Lines
	(Product_ID, Requests_ID, Quantity)
Values
	(1,1,1),
	(2,1,1),
	(3,1,3),
	(1,2,3),
	(2,2,2),
	(3,2,3);

	
/*
select * from Users
select * from Vendors
Select * from Products
select * from Requests
select * from Request_Lines
*/