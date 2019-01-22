select * 
from customers
where name in ('kroger', 'p&G','pnc bank', 'cintas', 'spectrum')
-- (where [column name] in) to only show certain rows. 
order by sales desc