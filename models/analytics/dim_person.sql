SELECT  
  CAST (person_id AS INT ) person_key
  , CAST (full_name AS STRING ) full_name
FROM `vit-lam-data.wide_world_importers.application__people` 
UNION ALL
SELECT 
    0 person_key
    , "Undefined" full_name