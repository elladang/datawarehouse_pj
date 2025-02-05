SELECT 
  CAST(buying_group_id AS INT) buying_group_key 
  ,  CAST(buying_group_name AS STRING) buying_group_name
FROM `vit-lam-data.wide_world_importers.sales__buying_groups` 
UNION ALL
SELECT 
    0 buying_group_key
    , "Undefined" buying_group_name