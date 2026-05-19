
      insert into "postgres"."dbt"."sat_customer" ("customer_pk", "customer_hashdiff", "first_name", "last_name", "id", "effective_from", "load_date", "record_source")
    (
        select "customer_pk", "customer_hashdiff", "first_name", "last_name", "id", "effective_from", "load_date", "record_source"
        from "sat_customer__dbt_tmp141556582523"
    )


  