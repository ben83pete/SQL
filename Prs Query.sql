use PrsDb;

Select r.description, r.status, concat(u.first_name, ' ', u.last_name) as 'User name',
	v.name as ' Vendor', p.name as 'product', rl.quantity, p.price, format (rl.quantity * p.price, 'c') as 'Line Total'
From requests r
join users u
on r.usersid = u.id
join request_lines rl
on r.id = rl.requests_id
join products p
on rl.product_ID = p.id
join vendors v
on p.vendorid = v.id

