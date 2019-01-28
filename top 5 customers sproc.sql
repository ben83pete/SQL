create procedure TopFivecustomers as
Begin
	Select top 5 * from customers
	order by sales desc;
End
go
exec TopFiveCustomers;
go