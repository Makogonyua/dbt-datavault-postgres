
      insert into "postgres"."dbt"."sat_order" ("order_pk", "order_hashdiff", "order_date", "status", "effective_from", "load_date", "record_source")
    (
        select "order_pk", "order_hashdiff", "order_date", "status", "effective_from", "load_date", "record_source"
        from "sat_order__dbt_tmp141558084904"
    )


  