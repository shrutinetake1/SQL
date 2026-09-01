--180. Consecutive Numbers

Select distinct num as ConsecutiveNums
from(
    Select 
    id, num,
    lag(num, 1) over (order by id) as prev1,
    lag(num, 2) over (order by id) as prev2
from Logs
) as t
where num = prev1 and num = prev2;
