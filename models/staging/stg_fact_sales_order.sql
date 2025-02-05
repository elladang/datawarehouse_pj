SELECT 
  CAST(order_id AS INT) sales_order_key
  , CAST(customer_id AS INT) customer_key
  , CAST(salesperson_person_id AS INT) sales_person_person_key
  , CAST(picked_by_person_id AS INT) picked_by_person_key
  , CAST(contact_person_id AS INT) contact_person_key
FROM vit-lam-data.wide_world_importers.sales__orders
