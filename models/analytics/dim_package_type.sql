SELECT 
  CAST(package_type_id AS INT) package_type_key
  , CAST(package_type_name AS STRING) package_type_name
FROM `vit-lam-data.wide_world_importers.warehouse__package_types` 