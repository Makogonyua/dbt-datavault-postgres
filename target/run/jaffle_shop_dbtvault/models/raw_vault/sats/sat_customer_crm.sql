
      insert into "postgres"."dbt"."sat_customer_crm" ("customer_pk", "customer_hashdiff", "age", "country", "effective_from", "load_date", "record_source")
    (
        select "customer_pk", "customer_hashdiff", "age", "country", "effective_from", "load_date", "record_source"
        from "sat_customer_crm__dbt_tmp181835780150"
    )


  