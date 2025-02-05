SELECT 
  CAST(order_id AS INT) sales_order_key
  , CAST(customer_id AS INT) customer_key
FROM vit-lam-data.wide_world_importers.sales__orders
