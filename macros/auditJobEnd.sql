{% macro auditJobEnd() %}
update demo_dev.abc_job  SET JobEndDateTime=SYSTIMESTAMP(),Job_Status='Complete' WHERE modelname='{{ this }}'
{% endmacro %}