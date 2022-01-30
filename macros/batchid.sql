{% macro batchid() %}
    -- , Cast ('{{ invocation_id }}' as Varbinary(100)) as batchid 
    , '{{ invocation_id }}' as batchid 
{% endmacro %}