--select * From customers
--select * From orders
--select * from Orderlines

/*insert into customers 
	(name, city, state, sales, active)
Values
	('Ben','Fairfield','OH', 100000, 1)
	
	=====
	insert into orders
	(CustomerId, Date, Description)
	Values
	(36, '2019/01/23', 'Press')
	
	=====
	insert into OrderLines
	(OrdersId, Product, Quantity, Price)
	Values
	(31, 'Jeep', 1, 35000)
	
	=====
	insert into Customers
	(name, city, state, sales, Active)
	Values
	('Max Techincal Training', 'Mason', 'OH', 100000, 1)
		
	=====
	insert into Orders
	(CustomerId, date, Description)
	Values
	(39, getdate(), 'First order for widgets')

	=====
	insert into OrderLines
	(OrdersId, Product, Description, Quantity, Price)
	Values
	(32, 'Echo Dot', 'Amazon Listening Device', 1, 39.99)
	*/

	select c.Name, o.Description, 
	ol.Product, ol.Quantity, ol.Price, 
	ol.Quantity * ol.Price as 'Total', ol.Description
	from Customers c
	join Orders o
	on o.CustomerId = c.Id
	join OrderLines ol
	on ol.OrdersId = o.Id
	where c.name like 'Max%'
	