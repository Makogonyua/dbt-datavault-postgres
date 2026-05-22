{{
    config(
        enabled=True,
        materialized='table'
    )
    
}}

select 
TO_CHAR(order_date, 'IYYY-IW') as cal_week, count(distinct hb_or.order_pk) as cnt
FROM dbt.sat_order as st_or inner join dbt.hub_order as hb_or on
st_or.order_pk = hb_or.order_pk

group by cal_week
order by cal_week desc