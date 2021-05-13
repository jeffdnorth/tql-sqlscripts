--2create-database-insert-delete-join

use master
	create database Pets ;

use Pets ;
	create table dogs (
	Id int primary key identity (1,1) ,
	Firstname varchar (30) not null ,
	Lastname varchar (30) not null ,
	Color varchar (10) not null )

	create table cats (
	id int primary key identity (1,1),
	Firstname varchar (30) not null,
	Lastname varchar (30) not null )
	
	create table Playtime (
	Id int primary key identity (1,1) ,
	Firstname varchar (30) not null,
	Toy varchar (30) not null ,
	Yard varchar (30) not null )

insert into dogs (Firstname , Lastname, color )
	values ('leo' , 'north' , 'black' )
insert into dogs (Firstname, Lastname, Color )
	values ('nova' , 'north' , 'black' )

insert into Playtime (Firstname,Toy,Yard)
	values ('leo','frisbee', 'front') ;

insert into Playtime (Firstname,toy,yard) 
	values ('nova', 'ball', 'front')

insert into cats (Firstname,Lastname)
	values ('murphy','ortiz'),('mia','ortiz')
delete from cats
	where Firstname = ('murphy')
delete from cats
	where lastname = ('mia')                   
insert into cats (Firstname,Lastname)
	values ('topaz','north')
	
select *
	from Playtime

select *
	from dogs

select *
	from cats

select d.Lastname, c.Lastname
	from dogs d
	join cats c
	on d.Lastname = c.Lastname