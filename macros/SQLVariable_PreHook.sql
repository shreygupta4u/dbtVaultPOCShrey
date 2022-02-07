{% macro Produce_JobId() %}
    {%- call statement('model_id_query', fetch_result=True) -%}
            SET model_id = (Select md5(concat(to_varchar('{{var('job_id')}}'),'-','{{this}}')))
    {%- endcall -%}
    {% if execute %}
        {%- set  model_id = load_result('model_id_query') ['data'][0][0]  -%}
    {% endif %}
{% endmacro %}