--2ND-CAPSTONE EXERCISE

use master;
drop database if exists PrsDb;
create database PrsDb;
GO
use prsdb;
--start creating tables
GO
create table Users (
	Id int primary key identity  (1,1),
	Username varchar (30) not null unique,
	Password varchar (30) not null,
	Firstname varchar (30) not null,
	Lastname varchar (30) not null, 
	Phone varchar (12),
	Email varchar (255),
	IsReviewer bit,
	IsAdmin bit, ) ;
GO
select * from Users;
GO
create table Vendors (
	Id int primary key identity (1,1),
	Code varchar (30) not null unique	,
	Name varchar (30) not null,
	Address varchar (30) not null,
	City varchar (30) not null,
	State varchar (2) not null,
	Zip varchar (5) not null,
	Phone varchar (12), 
	Email varchar (255) ,
		)
GO
select * from Vendors ;                      
GO




create table Products (
	Id int primary key identity (1,1),
	PartNbr varchar (30) not null unique,
	Name varchar (30) not null,
	Price dec (11,2) not null,
	Unit varchar (30) not null,
	PhotoPath varchar (255) ,
	VendorId int not null foreign key references Vendors (Id)
	);
GO	
	select * from Products
GO
create table Requests (
	Id int primary key identity (1,1) ,
	Description varchar (80) not null ,
	Justification varchar (80) not null ,
	RejectionReason varchar  (80) ,
	DeliveryMode varchar (20) not null default 'Pickup' ,
	Status varchar (10) default 'New' ,
	Total dec (11,2) default '0' ,
	UserId int not null foreign key references Users (Id) 
	);
GO
select * from Requests
GO
create table RequestLines (
	id int primary key identity (1,1),
	RequestId int not null foreign key references Products (Id),
	ProductId int not null foreign key references Products (Id),
	Quantity int not null default 1 ,
		) ;
GO
select * from RequestLines  
GO
select * from Users
GO
insert into Users ( Username, Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	        values ('hkari', 'xxxy','harry','kari','5134569898','hkari@gmail.com','1','1'),
					('sbennet', 'kkkk', 'steve','bennet', '6148975656','steveb@yahoo.com','0','0'),
					('fdreams', 'lklk','field','dreams','4806451234', 'fieldofdreams@hotmail.com','1','0') ;
GO
select * from Vendors
GO
insert into Vendors (Code,Name,Address,City,State,Zip,Phone,Email)
			values ('amaz','amazon', '4589 monopoly drive', 'los angeles', 'ca','56789','6146768989', 'amazon@amazon.com'),
				('krog','krogers','897 local grocer lane', 'cincinnati', 'oh','45234', '5136361234', 'krogers@krogers.com'),
				('stap','staples', '290 office supply lane', 'dallas','tx', '89765', '7236546789', 'staplesorders@staples.com'
		);
GO
select * from Products
go
insert into Products (PartNbr,Name,Price,Unit,VendorId)
			values ('100','eggs', '1.50', '1', (select id from Vendors where code = 'krog'  )),
					('200','bread','2.00', '1', (select id from Vendors where code = 'krog' )),
					('500', 'compdesk', '400.00', '1', (select id from Vendors where code = 'stap')),
					( '600','lamp', '200.00', '1', (select id from Vendors where code = 'amaz')) ;








 


	


