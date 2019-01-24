--display order lines from order 24

select *
from orders
join OrderLines
on Orders.Id = OrderLines.OrdersId

where Orders.Id = 24
