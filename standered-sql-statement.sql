select [name] as 'Customer',  concat(city, ', ', state) as'City, State', sales
from customers
where city = 'cincinnati' and sales >= 30000
order by sales desc;
