-- example of insert, delet, update
Insert into Customers(Name, City, State, Sales, Active)
    values 
    ('ACME MFG CO 1', 'Cincinnati', 'OH', 1000, 1),
    ('ACME MFG 2CO', 'Cincinnati', 'OH', 1000, 1)

     update Customers set
    name = 'Acme Mfg Co 2',
    Sales = 0
    where Name = 'ACME MFG CO 2';
	    
    select * from Customers
        where Name like 'ACME%';
    
    Delete from Customers
    where Id = (41)

    update Customers set 
    name = 'ACME MFG CO 2'
    where Name = 'ACME MFG 2CO';

select *
from Customers 

SELECT *
	FROM Customers 
	WHERE NAME = 'NORTH' 
	;

insert into Customers 
	(  Name , City , State , Sales, Active )
    values ('north' , 'milford' , 'oh' , 100 , 1 )  ;
----