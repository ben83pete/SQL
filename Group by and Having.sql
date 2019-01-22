select sum(sales), city
from customers
group by City
-- group by 
having sum(sales) > 600000
-- [having] shows results from aggregate
