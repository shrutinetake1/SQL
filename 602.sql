--602. Friend Requests II: Who Has the Most Friends

Select id, count(*) as num
from (
    select requester_id as id
    from RequestAccepted

    union all

    select accepter_id as id
    from RequestAccepted
) t
group by id
order by count(*) desc
limit 1;
