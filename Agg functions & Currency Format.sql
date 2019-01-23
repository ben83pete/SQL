<<<<<<< HEAD
select format(sum(sales),'c')as'sales total', 
format(avg(sales), 'c') as 'Sales Average',
format(min(sales), 'c') as 'min sales',
format(max(sales), 'c') as 'Max Sales',
count(*)
=======
select format(sum(sales),'c')as'sales total', 
format(avg(sales), 'c') as 'Sales Average',
format(min(sales), 'c') as 'min sales',
format(max(sales), 'c') as 'Max Sales',
count(*)
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
from customers;