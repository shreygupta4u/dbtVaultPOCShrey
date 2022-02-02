{% snapshot sat_order_customer_details %}
    {{
        config(
        target_database='ShreyDBTPOC',
        target_schema='DEMO_DEV',
        unique_key='CUSTOMER_PK',
        strategy='check',
        check_cols = 'all'
        
        )
    }}
        select * from {{ ref('vw_sat_order_customer_details') }}
{% endsnapshot %}