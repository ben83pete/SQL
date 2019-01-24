/*begin transaction

	update customers set sales = 200 where name like 'spectrum'

	rollback 
	*/
	-- select * from Customers

	begin transaction

	update customers set sales = 200 where name like 'spectrum'

	commit 

	select * from Customers