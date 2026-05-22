

select first_name, last_name, count(distinct st_or.order_pk) as cnt

from dbt.link_customer_order as lnk
inner join dbt.sat_order as st_or on 
lnk.order_pk = st_or.order_pk and st_or.status = 'completed'
inner join dbt.sat_customer as st_cs on 
lnk.customer_pk = st_cs.customer_pk

group by first_name, last_name
order by cnt desc