declare @cnt int = 0
while @cnt <10
	begin
		print concat ('This line is printed ', @cnt +1, ' times')
		Set @cnt = @cnt + 1;
	End
