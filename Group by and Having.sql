select sum(sales), city
from customers
group by City
-- group by 
having sum(sales) > 600000
-- having C.state in ('OH', 'IN', 'KY')
-- [having] shows results from aggregate

