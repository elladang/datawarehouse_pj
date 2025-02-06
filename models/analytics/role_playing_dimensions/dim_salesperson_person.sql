SELECT 
    person_key sales_person_person_key
    , full_name sales_person_full_name
FROM {{ref('dim_person')}}