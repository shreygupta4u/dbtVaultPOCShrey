{% snapshot cust_snapshot %}
    {{
        config(
        target_database='DBTVAULTORIGINAL',
        target_schema={{env_var('DBT_TGT_SCHEMA') }},
        unique_key='CUSTOMER_PK',
        strategy='check',
        check_cols = 'all'
        
        )
    }}
        select * from {{ ref('vw_sat_order_customer_details') }}
{% endsnapshot %}