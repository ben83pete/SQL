<<<<<<< HEAD
--display order lines from order 24

select *
from orders
join OrderLines
on Orders.Id = OrderLines.OrdersId
=======
--display order lines from order 24

select *
from orders
join OrderLines
on Orders.Id = OrderLines.OrdersId
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
where Orders.Id = 24