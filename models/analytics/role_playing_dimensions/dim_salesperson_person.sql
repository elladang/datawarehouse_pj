SELECT 
    person_key sales_person_person_key
    , full_name sales_person_full_name
    , search_name sales_person_search_name
FROM {{ref('dim_person')}}