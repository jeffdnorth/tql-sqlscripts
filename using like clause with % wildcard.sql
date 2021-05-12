--using like clause with % wildcard 

SELECT * 
	FROM Customers
	WHERE City in (select distinct city
	             from Customers
	             where city like 'cin%' or city like 'col%')