/*	using Like
	 _ underscore matches excatly 1 character
	 % percent sign matches any number of character even zero characters
	any other character must match excatly
 */

select *
from Customers c
where name like 'C%'; -- all customers begining with C

select *
from Customers c
where name like '_A%' -- only first character can be anything, 2nd letter must be A, any characters after that

select *
from Customers c
where name like '%bank%' -- finds any name containing the word bank

