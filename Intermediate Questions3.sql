-- Intermediate Question 3 . > Join relevant tables to find the category-wise distribution of pizzas.

-- select * from pizza_types;
select category , count(name) from pizza_types group by category;
