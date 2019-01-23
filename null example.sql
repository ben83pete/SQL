-- all customers and how many orders placed

select *
from Customers c
left join Orders o
on o.CustomerId = c.Id
where o.Id is null
order by c.id
