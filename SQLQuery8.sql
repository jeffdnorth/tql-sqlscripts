-- join with all three sales data bases all order and customer names on order lines
--for each order do not display PK all end in ID and bonus caluculate line total price times the quantity and display that  

select c.Name 'customer' , o.Description 'order' , ol.Description 'product' , ol.Quantity ,
	ol.price, ol.quantity * ol.price 'line total'
	from Orders o
	join OrderLines ol
		on o.Id = ol.OrdersId

	join Customers c
	on o.customerid = c.id

	order by c.Name
	

