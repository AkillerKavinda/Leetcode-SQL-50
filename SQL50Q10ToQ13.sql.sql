-- Q10 

select machine_id, round(sum(
    case 
        when activity_type = 'start' then -timestamp else timestamp 
    end )
    / count(distinct process_id),3) as processing_time
from activity
group by machine_id


-- Q11

select e.name, b.bonus
from employee e
left join bonus b
using(empID)
where b.bonus is null or b.bonus < 1000;

-- Q12

select student_id, subject_name, count(subject_name)
from examinations
group by student_id, subject_name

-- Q13

with cte as(select managerId, count(*)
from employee
group by managerId
having count(*)>=5)

select e.name
from employee e
join cte on e.id = cte.managerId;