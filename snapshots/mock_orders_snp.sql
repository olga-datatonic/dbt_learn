{% snapshot mock_orders_snp %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
      target_database='dbt-learn-project-37807',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from dbt-learn-project-37807.{{target.schema}}.mock_orders

{% endsnapshot %}