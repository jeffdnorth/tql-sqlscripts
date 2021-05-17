--CREATE-ALTER-PROCEDURE-UPDATE-USER-SET

create or alter procedure UpdateUser
@id int = 0,
@username varchar (30) = '', 
@password varchar (30) = '',
@firstname varchar (30) = '',
@lastname varchar (30) = '',
@phone varchar (12) = 'null',
@email varchar (255) = 'null',
@isreviewer bit = false,
@isadmin bit = false

as
begin
	if not exists (select 1 from Users where Id = @id )
	begin
		print 'Not Found';
		return -2;
	end;
	update Users set
		Username = @username,
		password = @password,
		firstname = @firstname,
		Lastname = @lastname,
		phone = @phone,
		Email = @email,
		IsReviewer = @isreviewer,
		isadmin = @isadmin
		where Id = @id;
	return 0;
end;
go
select * from Users
go
exec updateuser 4, 'xx', 'xx', 'xx','xx','null','null', 1,1;
GO

create or alter procedure UpdateUser
@id int = 0,
@username varchar (30) = '', 
@password varchar (30) = '',
@firstname varchar (30) = '',
@lastname varchar (30) = '',
@phone varchar (12) = 'null',
@email varchar (255) = 'null',
@isreviewer bit = false,
@isadmin bit = false

as
begin
	if not exists (select 1 from Users where Id = @id )
	begin
		print 'Not Found';
		return -2;
	end;
	update Users set
		Username = @username,
		password = @password,
		firstname = @firstname,
		Lastname = @lastname,
		phone = @phone,
		Email = @email,
		IsReviewer = @isreviewer,
		isadmin = @isadmin
		where Id = @id;
	return 0;
end;
go
select * from Users
go
exec updateuser 1003, '3xx', 'xx', 'xx', 'xx','null','null', 1,1;
GO
	

	
	@username = '' or @password = '' or 
	@firstname = '' or @lastname = ''
	begin
		print 'Required data is not provide!';
		return -1;
end;

if exists (select 1 from Users where Username = @username) 
begin
end;

GO
	insert into Users (Username,Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)  
	values 	(@username, @password, @firstname, @lastname, @phone,@email,@isreviewer,@isadmin);
	return 0;  
end
GO
exec AddUser 'xx', 'xx', 'xx','xx',null,null, 0,0;
GO
exec AddUser '1xx', 'xx', 'xx','xx',null,null, 0,0;
GO
select * from Users
GO
select * from Users
go
create or alter updateUser

@id int = 0,
@username varchar (30) ,
@password varchar (30) ,
@firstname varchar (30),
@lastname varchar (30),
@phone varchar (12) ,
@email varchar (255),
@isreviewer bit ,
@isadmin bit 

as
begin
	if not exists (select 1 from Users where id = @id)
	begin
		print 'not found';
		return -2;
end;

update user set
	password = @password
	...
	Where id =@id
		@username varchar (30) = '',
		@password varchar (30) = '',
		@firstname varchar (30) = '',
		@lastname varchar (30) = '',
		@phone varchar (12) = 'null',
		@email varchar (255) = 'null',
		@isreviewer bit = false,
		@isadmin bit = false




