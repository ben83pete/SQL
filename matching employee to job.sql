--matching employeesto job description
select lastname, Firstname, job.Description, job.Salary 
from Employee
join Job
on Job.Id = Employee.JobId

	