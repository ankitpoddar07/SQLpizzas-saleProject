

-- Intermediate Question 2 . > Determine the distribution of orders by hour of the day.



-- select * from orders;
-- select hour(order_time) from orders;
select hour(order_time), count(order_id) from orders group by hour(order_time);

