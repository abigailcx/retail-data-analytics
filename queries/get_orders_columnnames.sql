SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'orders';

SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'dim_customer';

SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'country_region';

SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'dim_date';

SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'dim_product';

SELECT table_catalog, table_schema, table_name, column_name FROM information_schema.columns
WHERE table_name = 'dim_store';