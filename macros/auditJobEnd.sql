{% macro auditJobEnd() %}
update demo_dev.abc_job  SET End_Timestamp=SYSTIMESTAMP(),Job_Status='Complete' WHERE modelname='{{ this }}'
{% endmacro %}