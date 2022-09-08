with orders as (
select * from {{ ref('stg_orders') }}
), 

aggregated as (
select 
status,
count(order_id) as number_of_orders
from orders
)

select * from aggregated