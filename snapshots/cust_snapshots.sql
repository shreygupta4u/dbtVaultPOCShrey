{% snapshot cust_snapshot %}
    {{
        config(
        target_database='DBTVAULTORIGINAL',
        target_schema='DEMO_DEV',
        unique_key='CUSTOMER_PK',
        strategy='check',
        check_cols = 'all'
        
        )
    }}
        select * from {{ ref('sat_order_customer_details') }}
{% endsnapshot %}