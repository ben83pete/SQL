--all employees who are making 100K +
select *
from job j
join Employee e
on e.JobId = j.Id
where j.Salary >= 100000


