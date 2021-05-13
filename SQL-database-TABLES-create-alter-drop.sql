--SQL-database-TABLES-create-alter-drop

use master
	create database Bootcamp ;

use Bootcamp ;
create table Students ( 
	Id int primary key identity (1,1) ,
	Firstname varchar (30) not null  , 
	Lastname varchar (30) not null ,
	Address varchar (50)  not null ,
	City varchar (50) not null ,
	State char (2) not null ,
	zip varchar  (10) not null ,
	Assessmentscore int not null )
		create table Assessments 
		(		Id int primary key identity (1,1) ,
		StudentID int not null foreign key references Students (Id) , 
		Topic varchar (30) not null, 
		Score int not null ) 

	);

insert into Students (Firstname, Lastname, Address, City, State, zip, assessmentscore)
	values ('jeff' , 'north' , '5441 Sugar' , 'milford' , 'oh' , '45150' , 83 )

delete from Students
	where Firstname = 'jeff'


select *
	from Students

CREATE DATABASE MyDB ;

