-- Q18

select contest_id, round(count(user_id) * 100.0/(select count(*) from users), 2) as percentage
from register 
group by contest_id
order by percentage desc, contest_id asc;

-- Q19

select query_name, round(avg(rating * 1.0/position),2) as quality, round(count(case when rating < 3 then 1 end) * 100.0/ count(*),2) poor_query_percentage
from queries
group by query_name;
