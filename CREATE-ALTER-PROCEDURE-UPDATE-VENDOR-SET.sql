----CREATE-ALTER-PROCEDURE-UPDATE-VENDOR-SET

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
exec updateuser 1002, 'xx', 'xx', 'xx','xx','null','null', 1,1;
GO
--
GO

select * from Vendors
GO

create or alter procedure updatevendors
@id int = 0  ,
@code varchar (30 ) = '',
@name varchar (30) = '',
@address varchar ( 30) = '',
@city varchar ( 30) = '',
@state  varchar (2 ) = '',
@zip varchar (5) = '',
@phone varchar (12) = '',
@email varchar (255) = ''

as
begin
	if not exists (select 1 from Vendors where code = @code )
	begin
		print 'vendor already exists';
		return -1;
	end;
insert Vendors (code,name,address,city,state,zip, Phone,Email)
	values ( @code, @name,@address,@city,@state,@zip,@phone,@email)
	
update vendors set	
	code = @code,
	name = @name,
	Address = @address,
	City = @city,
	state = @state,
	zip = @zip,
	phone = @phone,
	email = @email
	where id = @id;
return 0;
end;
go
select * from Vendors
go
exec updatevendors 3 , 'x', 'x','x','x','x','x','x','x';
GO 

create or alter procedure DeleteVendors
	@id int = 0
	as
	begin
	if not exists (select 1 from vendors where id = @id)
	begin 
		print 'vendor not found';
		return -1;
		end
		Delete from Vendors
			where Id = @id;
			return 0;
		end;
exec DeleteVendors 1;
GO
select * from Products
GO
create or alter procedure Addproducts
	
	@partnbr varchar (30) = '',
	@name varchar (30) = '',
	@price dec (11,2) = '',
	@unit varchar (30) = '',
	@photopath varchar (255) = '',
	@vendorname varchar (30) = null
	as
	begin
		if vendorname = null
		begin	print 'vendor name is required';
		return -1;
		end;
		declare @vendorid int = 0;
		Select @vendorid = id from vendors where name like '%@vendorname%';
		insert into Products (PartNbr,Name,Price,Unit,PhotoPath,VendorId)
			values (@partnbr,@name,@price,@unit,@photopath,@vendorid);
		IF @@ROWCOUNT <> 1
		begin
			print 'error: insert failed';
	end;
GO
exec Addproducts '700','beer','8.00','1', 'null','2'





	

