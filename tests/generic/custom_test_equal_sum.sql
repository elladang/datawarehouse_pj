{% test custom_test_equal_sum(
    model,
    column_name,
    compare_model,
    compare_column,

    where = 'TRUE',
    compare_where = 'TRUE'
) %}

WITH source AS (
    SELECT SUM( CAST({{ column_name }} AS NUMERIC) ) AS source_total
    FROM {{ model }}
    WHERE {{ where }}
),

compare AS (
    SELECT SUM( CAST({{ compare_column }} AS NUMERIC) ) AS compare_total
    FROM {{ compare_model }}
    WHERE {{ compare_where }}
)

SELECT 
    source.source_total,
    compare.compare_total
FROM source, compare
WHERE source.source_total != compare.compare_total

{% endtest %}
