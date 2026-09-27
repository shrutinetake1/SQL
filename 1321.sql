--1321. Restaurant Growth

with same_date as(
    select customer_id, name, visited_on, SUM(amount) AS amount
    from Customer 
    group by visited_on
),
same_date2 as(
    Select 
    visited_on, 
    sum(amount) over (order by visited_on rows between 6 preceding and current row) as amount, 
    round(avg(amount) over (order by visited_on rows between 6 preceding and current row) , 2) as average_amount,
    ROW_NUMBER() OVER (ORDER BY visited_on) AS rn
    from same_date
)

Select 
    visited_on,
    amount, 
    average_amount
from same_date2
where rn>=7;
