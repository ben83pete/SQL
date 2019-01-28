Alter procedure EvenlyDivisableByThirteen
	@DivideByThirteen int 
as
	If @DivideByThirteen < 0 
		begin
			Print 'Number must be > Zero.'
			Return
		End
	
	If @DivideByThirteen % 13 = 0 
		Begin
			Print 'Number is evenly divided by 13.'
			Return
		End
	Else
		Begin
			Print 'Number is NOT evenly divided by 13.'
		End
go

Exec EvenlyDivisableByThirteen 
