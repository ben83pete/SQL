-- see all orders for rolex's

select c.name, count(*) as 'Rolex watchs ordered'
from Customers c
join orders o
on o.CustomerId = c.Id
join OrderLines ol
on ol.OrdersId = o.Id
where ol.Description = 'rolex'
group by c.name
order by c.name
