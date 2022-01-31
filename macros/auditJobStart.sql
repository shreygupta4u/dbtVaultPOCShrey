{% macro auditJobStart() %}
Insert into demo_dev.abc_job 
(Job_ID,Batch_id,JobMaster_ID,Start_Timestamp,Job_Status)
Select {{ invocation_id }}, 'b4650eed-6a03-4524-b99c-e30d37c70bfa', 1,CURRENT_TIMESTAMP(),'Started'

{% endmacro %}