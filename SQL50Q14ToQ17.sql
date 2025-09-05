-- Q14

select user_id, round(avg( case when action = 'confirmed' then 1 else 0 end),2) as confirmation_rate
from confirmations
right join signups
using(user_id)
group by user_id


-- Q15

select *
from cinema
where id % 2 != 0 and description != 'boring'
order by rating desc;

-- Q16

select p.product_id, coalesce( round(sum(p.price * u.units) * 1.0 / sum(u.units), 2), 0) as average_price
from prices p
left join  unitssold u
on p.product_id = u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by p.product_id

-- Q17

select p.project_id, round(avg(e.experience_years),2) as average_years
from project p
inner join employee e
using(employee_id)
group by p.project_id