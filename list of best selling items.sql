<<<<<<< HEAD
--what our biggest seller
select ol.Description, count(*) as 'total sold', 
format(sum(Quantity * Price), 'c') as 'revenue'
from Orderlines ol
group by ol.Description
=======
--what our biggest seller
select ol.Description, count(*) as 'total sold', 
format(sum(Quantity * Price), 'c') as 'revenue'
from Orderlines ol
group by ol.Description
>>>>>>> 07002971464df74993c24ca04285c1e1545c8c27
order by [revenue] desc