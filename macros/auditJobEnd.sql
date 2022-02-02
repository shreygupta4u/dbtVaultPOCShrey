{% macro auditJobEnd() %}
update demo_dev.abc_job  SET JobEndDateTime=CURRENT_TIMESTAMP(),Job_Status='Complete' WHERE JobName='{{ this }}'
{% endmacro %}