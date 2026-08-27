--570. Managers with at Least 5 Direct Reports

select e.name
from Employee as e
join Employee as emp
on e.id = emp.managerID
group by e.id, e.name
having count(emp.id)>=5;

