SELECT 
  CAST(supplier_category_id AS INT) supplier_category_key
  , CAST(supplier_category_name AS STRING) supplier_category_name
FROM `vit-lam-data.wide_world_importers.purchasing__supplier_categories` 