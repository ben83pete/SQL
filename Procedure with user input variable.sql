alter procedure CustomersWithSalesGTValue 
	@MinSales decimal(9,2) -- paramater, must be before [as]
as
Begin
	Select * from customers
	where sales > @MinSales
	order by Sales desc;
End
go
exec CustomersWithSalesGTValue 80000;
go
