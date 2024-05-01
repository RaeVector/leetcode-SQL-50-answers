select EmployeeUNI.unique_id, Employees.name from 
Employees left join EmployeeUNI
on Employees.id = EmployeeUNI.id
and unique_id IS NOT NULL
