
-- Q1

select product_id
from products
where low_fats = 'Y' and recyclable = 'Y'

-- Q2

select name from Customer
where referee_id != 2 or referee_id is null;

-- Q3

select name, population, area
from world 
where area >= 3000000 or population >= 25000000;

-- Q4

select distinct author_id as id
from Views
where author_id = viewer_id
order by id ;

-- Q5

select tweet_id
from Tweets
where length(content) > 15;

-- Q6

select unique_id, name
from Employees e
left join EmployeeUni emp
on e.id = emp.id;

-- Q7

select p.product_name, s.year, s.price
from Sales s
inner join Product p
using(product_id)

-- Q 8

select customer_id, count(visit_id) as count_no_trans
from Visits
where visit_id not in (select visit_id from Transactions)
group by customer_id;

-- Q 9
select id as Id from(
    select id, temperature,
    lag(temperature) over() as temp
    from weather
)
where temp < temperature;