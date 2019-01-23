--what our biggest seller
select ol.Description, count(*) as 'total sold', 
format(sum(Quantity * Price), 'c') as 'revenue'
from Orderlines ol
group by ol.Description
order by [revenue] desc