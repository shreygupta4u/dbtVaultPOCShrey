{% macro get_metrics() %}

{% set getMetricscount %}
select distinct payment_method from app_data.payments
order by 1
{% endset %}

{% endmacro %}