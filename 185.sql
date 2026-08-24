--185. Department Top Three Salaries

with department as(
    select d.name as Department, e.name as Employee, e.salary as Salary, dense_rank() over (partition by e.departmentId order by e.salary desc) as rankedsalary 
    from Employee as e
    inner join Department as d
    on e.departmentId = d.id
)

select Department, Employee, Salary 
from department 
where rankedsalary in (1,2,3);
