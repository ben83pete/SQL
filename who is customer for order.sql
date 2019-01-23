--who is customer for order 21
select customers.name
from orders
join Customers
on Orders.CustomerId = Customers.Id
where orders.id = '21'