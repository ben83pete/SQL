USE [SalesDb]
GO
/****** Object:  StoredProcedure [dbo].[Helloworld]    Script Date: 1/28/2019 10:51:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Helloworld] 
as 
begin
print 'Hello, World from the .Net boot camp SQL Server topic.';
select 'this is a test';

declare @counter int;  -- Variable
set @counter = 88;

select @counter

declare @message nvarchar(80) = '2nd text box';
print @message;

end
