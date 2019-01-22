select format(sum(sales),'c')as'sales total', 
format(avg(sales), 'c') as 'Sales Average',
format(min(sales), 'c') as 'min sales',
format(max(sales), 'c') as 'Max Sales',
count(*)
from customers;