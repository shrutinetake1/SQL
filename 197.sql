--197. Rising Temperature

select id 
from(
    select 
    id, temperature, recordDate,
    lag(temperature) over (order by recordDate) as prev,
    lag(recordDate) over (order by recordDate) as prev_date
    from Weather
) as t
where datediff(recordDate, prev_date)=1 and prev < temperature;
