<<<<<<< HEAD
-- display individual customers w/ sales > the AVG of all Customers
-- select avg(sales) from customers;

select * from customers
=======
-- display individual customers w/ sales > the AVG of all Customers
-- select avg(sales) from customers;

select * from customers
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
where sales > (select avg(sales) from customers)