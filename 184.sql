--184. Department Highest Salary

with ranked as(
    select d.name as Department, e.name as Employee, e.salary as Salary, rank() over (partition by e.departmentId order by e.salary desc) as rankedSalary 
    from Employee as e 
    inner join Department as d
    on e.departmentId = d.id 
)

select Department, Employee, Salary 
from ranked 
where rankedSalary = 1;
