use SalesDb
go
Create procedure InsertCustomer
	@Name nvarchar(30),
	@City nvarchar(30),
	@State nchar(2)
as
Begin
	IF @state not in ('OH', 'KY', 'IN')
		Begin
			Print 'State must be OH, IN, or KY.'
			Return 1;
		End
	Insert Into Customers
		(Name, City, State, Sales)
	Values
		(@Name, @City, @State, 0);

	If @@ROWCOUNT != 1
		Begin
			Print 'Insert Failed'
			Return 2;
		End
	Print 'Insert Successful'

End	
go
exec InsertCustomer 'Acme Mfg.', 'Erie', 'IN'
go