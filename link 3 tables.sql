<<<<<<< HEAD
-- see all orders for nationwide

select c.*, o.*, ol.*
from Customers c
join orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.Id
=======
-- see all orders for nationwide

select c.*, o.*, ol.*
from Customers c
join orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.Id
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
where name = 'nationwide'