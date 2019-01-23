-- display individual customers w/ sales > the AVG of all Customers
-- select avg(sales) from customers;

select * from customers
where sales > (select avg(sales) from customers)