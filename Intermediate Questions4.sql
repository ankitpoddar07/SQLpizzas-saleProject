-- Intermediate Question 4 . > Group the orders by date and calculate the average number of pizzas ordered per day.

-- select * from orders;
-- select orders.order_date, sum(order_details.quantity) from orders join order_details on orders.order_id = order_details.order_id group by orders.order_date;

/* AVERAGE OF PER DAY
select avg(quantity) from (select orders.order_date, sum(order_details.quantity) as quantity from orders join order_details on orders.order_id = order_details.order_id
group by orders.order_date) as order_quantity; */

-- Round VALUE per day pizzas - orders
select round(avg(quantity),0) as pizzas_perDAY_orderd from (select orders.order_date, sum(order_details.quantity) as quantity from orders join order_details 
on orders.order_id = order_details.order_id group by orders.order_date) as order_quantity;
