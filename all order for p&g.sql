--all orders for pg

select * 
from customers
join orders
on Orders.CustomerId = Customers.Id

where name = 'P&G'
