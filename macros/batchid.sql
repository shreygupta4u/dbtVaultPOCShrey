{% macro batchid %}
    (, Cast {{ invocation_id }} as batchid)
{% endmacro %}
