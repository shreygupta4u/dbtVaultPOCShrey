{% snapshot cust_snapshot %}
    {{
        config(
        unique_key='CUSTOMER_PK',
        strategy='check',
        check_cols = 'all'
        
        )
    }}
        select * from {{ ref('vw_sat_order_customer_details') }}
{% endsnapshot %}