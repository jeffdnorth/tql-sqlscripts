--create-database-create-table
--use master
	--create database BcDb; 
GO
use Bootcamp
create table Customers (
	Id int primary key identity (1,1) ,
	Code varchar (10) not null unique,
	Name varchar (30) not null , 
	Sales decimal (9,2) not null default 0 check (sales >=0),
	Active bit not null default 1,
	Created datetime not null default GETDATE() 
	);
GO
SELECT *
from Customers

GO
INSERT into Customers (Code, Name)
	values	('TQ','Tota Quality Logistics');
insert into Customers (Code, Name) 
	values ('tql', 'should not work');
insert into Customers (Code,Name,Sales)
	values ('max', 'max tech', 200);
GO
ALTER table customers
	add updated datetime;
GO
Alter table customers
	alter column name varchar (50) not null;