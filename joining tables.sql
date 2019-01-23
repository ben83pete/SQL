<<<<<<< HEAD
--select * from customers where id = '1';
--select top 1 * from orders;

select orders.Id , Orders.Date as 'Order Date', orders.Description as 'Desc', customers.name as 'Customer name', OrderLines.Product,
OrderLines.Description, OrderLines.Price, OrderLines.Quantity
 
from orders 
join customers 
on CustomerId = Customers.id  --what we want to match from both tables

join OrderLines
on OrderLines.OrdersId = orders.Id

order by orders.Id;

=======
--select * from customers where id = '1';
--select top 1 * from orders;

select orders.Id , Orders.Date as 'Order Date', orders.Description as 'Desc', customers.name as 'Customer name', OrderLines.Product,
OrderLines.Description, OrderLines.Price, OrderLines.Quantity
 
from orders 
join customers 
on CustomerId = Customers.id  --what we want to match from both tables

join OrderLines
on OrderLines.OrdersId = orders.Id

order by orders.Id;

>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
