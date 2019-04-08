select sum(Price * Qty)
from Request r
join Request_Lines l
on r.Id = l.RequestId
join Product p
on p.id = l.ProductId
where r.Id = 6

select l.*, p.*
from Request r
join Request_Lines l
on r.Id = l.RequestId
join Product p
on p.id = l.ProductId
where r.Id = 6

