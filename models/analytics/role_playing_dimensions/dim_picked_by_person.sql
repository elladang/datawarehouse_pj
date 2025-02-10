SELECT 
    person_key picked_by_person_person_key
    , full_name picked_by_person_full_name
    , search_name spicked_by_person_search_name
FROM {{ref('dim_person')}}
WHERE is_salesperson IS FALSE