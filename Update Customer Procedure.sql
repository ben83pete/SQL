use SalesDb
go
Alter procedure UpateCustomer
	@id int,
	@Name Nvarchar (30),
	@City nvarchar (30),
	@State nchar(2)
as

Begin
		If @id is Null
			Begin
				Print 'Must have customer ID.'
				return 1
			End
		If @state not in ('OH', 'IN', 'KY')
			Begin
				Print 'State must be OH, IN or KY.'
				return 2
			End
		update Customers
			set 
				Name = @Name,
				City = @city,
				State = @State
				where Id = @id;

		If @@ROWCOUNT != 1
			Begin 
				Print 'Update Failed'
			End
		Print 'Insert Successful'
END
go
exec UpateCustomer 36, 'RoadRunner INC', 'Gary', 'IN'
go