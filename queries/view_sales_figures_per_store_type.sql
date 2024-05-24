CREATE VIEW abi_sales_figures_per_store_type
AS
with cte AS(
SELECT dim_store.store_type, 
        ROUND(SUM(CAST(dim_product.sale_price AS numeric) * orders.product_quantity), 2) AS total_sales,
        COUNT(*) AS count_of_orders
FROM orders
LEFT JOIN dim_store ON orders.store_code = dim_store.store_code
LEFT JOIN dim_product ON orders.product_code = dim_product.product_code
GROUP BY dim_store.store_type
),

cte2 AS
(SELECT SUM(total_sales) AS sum_total_sales
FROM cte)

SELECT * , ROUND(total_sales / (SELECT sum_total_sales FROM cte2) * 100, 2) AS percentage_total_sales
FROM cte
ORDER BY total_sales DESC
;
