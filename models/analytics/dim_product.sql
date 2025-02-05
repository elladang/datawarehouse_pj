WITH dim_product__source AS (
    SELECT 
        CAST(stock_item_id AS INT) product_key
        , CAST(stock_item_name AS STRING) product_name
        , CAST(COALESCE(brand, "Undefined") AS STRING) brand_name
        , CAST( supplier_id AS INT ) supplier_key
        , CAST (unit_package_id AS INT) unit_package_type_key
        , CAST (outer_package_id AS INT) outer_package_type_key
    FROM `vit-lam-data.wide_world_importers.warehouse__stock_items` 
)

SELECT 
    dp.product_key
    , dp.product_name
    , dp.brand_name
    , dp.supplier_key
    , ds.supplier_name
    , ds.supplier_category_key
    , ds.supplier_category_name
    , dp.unit_package_type_key
    , dpt. package_type_name unit_package_type_name
    , dp.outer_package_type_key
    , dou.package_type_name outer_package_type_name

FROM dim_product__source dp
LEFT JOIN {{ref('dim_supplier')}} ds
ON dp.supplier_key = ds.supplier_key
LEFT JOIN {{ref('dim_package_type')}} dpt
ON dp.unit_package_type_key = dpt.package_type_key
LEFT JOIN {{ref('dim_package_type')}} dou
ON dp.outer_package_type_key = dou.package_type_key