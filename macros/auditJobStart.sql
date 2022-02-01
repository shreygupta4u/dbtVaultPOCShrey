{% macro auditJobStart() %}
Insert into demo_dev.abc_job 
(Job_ID,Batch_id,JobName,Start_Timestamp,Job_Status)
Select '{{ invocation_id }}', 'b4650eed-6a03-4524-b99c-e30d37c70bfa', '{{ this }}'',CURRENT_TIMESTAMP(),'Started'
{% endmacro %}