WITH cte AS(
SELECT dim_product.product_uuid, (dim_product.sale_price - dim_product.cost_price) * orders.product_quantity AS profit,
    dim_product.category,
    dim_store.full_region, 
    dim_date.year 
FROM orders
LEFT JOIN dim_product ON orders.product_code = dim_product.product_code
LEFT JOIN dim_store ON orders.store_code = dim_store.store_code
LEFT JOIN dim_date ON orders.order_date = dim_date.date
)

SELECT category, SUM(profit) AS profit
FROM cte
WHERE full_region = 'Wiltshire, UK'
AND year = 2021
GROUP BY category
ORDER BY profit DESC
LIMIT 1
;
