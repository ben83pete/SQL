Use SalesDb
go

Alter procedure DeleteCustomer
	@Id int = -1  --default an invalid charater so that user must enter field
as
	Begin
		If @Id = -1
		return 1;
	End	
	
			-- this checks for the existance of the row to be deleted
		IF not exists(select Name from Customers Where id = @Id)Begin
			Print 'ID does not exist.';
			Return 2;
			End

	Delete From Customers 
	Where id = @Id

	If @@ROWCOUNT != 1 Begin
		Print' Delete Failed'
		return 3
		END		
go
exec DeleteCustomer	XXX
go

