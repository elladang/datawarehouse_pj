SELECT 
  CAST(customer_category_id AS INT) customer_category_key
  , CAST(customer_category_name AS STRING) customer_category_name
FROM `vit-lam-data.wide_world_importers.sales__customer_categories` 