--  Determine the distribution of orders by hour of the day.

 SELECT 
    HOUR(order_time) hour, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY hour;