<<<<<<< HEAD
--who is customer for order 21
select customers.name
from orders
join Customers
on Orders.CustomerId = Customers.Id
=======
--who is customer for order 21
select customers.name
from orders
join Customers
on Orders.CustomerId = Customers.Id
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
where orders.id = '21'