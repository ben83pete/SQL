Drop table if exists Students;

go

drop table if exists Majors

Create table Majors (
	Id int primary key identity (1,1) not null,
	Description nvarchar (50) not null,
	);
go

create table Students (
	Id int not null Primary Key identity (1,1),
	First_Name nvarchar (20) not null unique,
	Fav_Date datetime null,
	Loves_GoT bit not null default 1,
	Rate_GOT decimal(3,1) not null default 5.0
		check (Rate_GOT >= 0 and Rate_GOT <= 10.0),
	Majors_Id int Null foreign key references Majors (id)
);

go

insert into Majors (Description)
Values ('Math');

insert into Majors (Description)
Values ('Engineering')

go

insert into Students
(First_Name, Loves_GoT, Rate_GOT, Majors_Id)
Values
('Jim',1, 7.5, 1);

insert into Students
(First_Name, Loves_GoT, Rate_GOT, Majors_Id)
Values
('ben',1, 9.5, 2);

insert into Students
(First_Name, Loves_GoT, Rate_GOT)
Values
('Chris',0, 1.5);

go

select * from Students