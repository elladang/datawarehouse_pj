SELECT 
  order_line_id sales_order_line_key
  , quantity
  , unit_price
  , unit_price * quantity gross_amount
FROM `vit-lam-data.wide_world_importers.sales__order_lines` 