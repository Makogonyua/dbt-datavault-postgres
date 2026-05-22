

    TRUNCATE TABLE "postgres"."dbt"."customer_pit";

    INSERT INTO "postgres"."dbt"."customer_pit" ("customer_pk", "as_of_date", "sat_customer_pk", "sat_customer_ldts", "sat_customer_crm_pk", "sat_customer_crm_ldts")
    (
       SELECT "customer_pk", "as_of_date", "sat_customer_pk", "sat_customer_ldts", "sat_customer_crm_pk", "sat_customer_crm_ldts"
       FROM "customer_pit__dbt_tmp181837933375"
    );