{% macro auditJobEnd() %}
update demo_dev.job SET JobEndDateTime=SYSTIMESTAMP() WHERE modelname='{{ this }}'
{% endmacro %}