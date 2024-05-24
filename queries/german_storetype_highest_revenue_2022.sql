SELECT ROUND(SUM(CAST(dim_product.sale_price AS numeric) * product_quantity), 2) AS revenue, store_type 
FROM orders
LEFT JOIN dim_store ON orders.store_code = dim_store.store_code
LEFT JOIN dim_product ON orders.product_code = dim_product.product_code
LEFT JOIN dim_date ON orders.order_date = dim_date.date

WHERE dim_store.country = 'Germany' AND dim_date.year = 2022
GROUP BY store_type
ORDER BY revenue DESC
LIMIT 1
;


