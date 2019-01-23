-- see all orders and order lines for nationwide

select c.*, o.*, ol.*
from Customers c
join orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.Id
where name = 'nationwide'