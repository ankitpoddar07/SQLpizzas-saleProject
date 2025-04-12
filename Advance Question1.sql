-- Advanced Questions :
-- Advanced Questions 1 : > Calculate the percentage contribution of each pizza type to total revenue.

/* select pizza_types.category, sum(order_details.quantity * pizzas.price) as revenue from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id join order_details
on order_details.pizza_id = pizzas.pizza_id group by pizza_types.category order by revenue desc ; */

/* select pizza_types.category, (sum(order_details.quantity * pizzas.price) / (select round(sum(order_details.quantity * pizzas.price),2) as total_sales from order_details join
pizzas on pizzas.pizza_id = order_details.pizza_id))* 100 as revenue  from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id join order_details
on order_details.pizza_id = pizzas.pizza_id group by pizza_types.category order by revenue desc ; */

select pizza_types.category, round((sum(order_details.quantity * pizzas.price) / (select round(sum(order_details.quantity * pizzas.price),2) as total_sales from order_details join
pizzas on pizzas.pizza_id = order_details.pizza_id))*100,2) as revenue  from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id join order_details
on order_details.pizza_id = pizzas.pizza_id group by pizza_types.category order by revenue desc ;