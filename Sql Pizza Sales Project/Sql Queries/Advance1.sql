-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name AS name_of_pizzas,
    sum(order_details.quantity *pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY name_of_pizzas
ORDER BY revenue DESC
LIMIT 3;