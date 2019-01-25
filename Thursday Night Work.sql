/*
select * from Customers
Select * from Orders
select * from orderlines

add new customer
create new order
create multiple orderlines 
calculate new customer sales total

== create new column for sales line total


select *, quantity * price as 'line total'
from orderlines
where id = (select max(id) from OrderLines);

======
insert into
customers
(name, City, State, Sales, Active)
Values
('Fake Co.', 'Mason', 'OH', 587456, 1)


Insert into
Orders
(CustomerId, Date, Description)
Values
(36, '2018/2/10', 'Feb Order') 
*/ 
