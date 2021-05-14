---CAPSTONE-EXERCISE

USE master;
DROP database if exists PrsDb;
create database PrsDb;
GO
use PrsDb;
--Start creating tables
GO
create table Usersduplicate (
	Id int primary key identity (1,1) ,
	Username varchar (30) not null unique ,
	Password varchar (30) unique ,
	Firstname varchar (30) ,
	Lastname varchar (30) ,
	Phone varchar (12)  ,
	Email varchar (255) not null ,
	IsReviewer bit ,
	IsAdmin bit ,
	);
go
select * from Usersduplicate
go 
select * from Users
go
create table vendors (
	Id int not null primary key identity (1,1),
	Code varchar (30) not null  unique ,
	Name varchar (30) not null  ,
	Address varchar (30) not null,
	City varchar (30) not null,
	State varchar (2) not null ,
	Zip varchar (5) ,
	Phone varchar (12) ,
	Email varchar (255) 
	);
go
select * from vendors
go
create table Products (
	Id int primary key identity (1,1),
	PartNbr varchar (30) not null ,
	Name varchar (30) not null ,
	Price dec (11,2) not null ,
	Unit varchar (30) not null,
	PhotoPath varchar (255) ,
	VendorId int foreign key references Vendors (Id)
	) ;
go
select * from Products
go
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
go
select * from Requests ;
go
create table RequestLine (
	Id int primary key identity (1,1) ,
	RequestId int not null foreign key references Requests (Id),
	ProductId int foreign key references Products (Id) ,
	Quantity int not null default 1 ,
	); 
go
select * from Requestline
go
select * from Usersduplicate
go
insert into Usersduplicate (Username,Password,Firstname,Lastname,
			Phone,email,IsReviewer,IsAdmin)
	values
	('jeffno','xxyy','jeff','north','5132355788','jnorth@tql.com',
		'1', '0' )
go 
insert into Usersduplicate (Username,Password,Firstname,Lastname,
			Phone,Email,IsReviewer,IsAdmin)
	values ('harrlo', 'xxxx','harry','lowered','6145642323', 'harry@gmail.com', '1','1'),
			('stevbe', 'yyyx', 'steven', 'bennett', '3452345689', 'sbennett@yahoo.com', '0','0' )
go
select * from vendors
go
insert into vendors (Code, Name,Address,City,State,Zip,Phone,Email)
	values ('amaz','amazon','evilmonop dr', 'parkcity','ca','45150', '5135553445',
			'get@amazon.com')
go
insert into vendors (Code,Name,Address,	City,State,Zip,Phone,Email)
	values ('krog','krogers','65 fargo st','cinncinati','oh','45234',
			'5132345678','get@krogers.com'),
			('stap','staples','78 wellspring rd', 'los angeles','ca','23156',
			'6147813456','get@staples.com')
go
insert into Products (PartNbr,NAME,Price,Unit,PhotoPath,VendorId)
	  

	
	
	
 

	
		





