SELECT ROUND(SUM(CAST(sale_price AS numeric) * product_quantity), 2) AS revenue, month_name FROM orders
LEFT JOIN dim_date ON orders.order_date = dim_date.date
LEFT JOIN dim_product ON orders.product_code = dim_product.product_code
WHERE dim_date.year = 2022
GROUP BY month_name
ORDER BY revenue DESC
LIMIT 1
;