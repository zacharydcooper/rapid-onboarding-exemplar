{{ codegen.generate_source(schema_name= 'jaffle_shop', database_name= 'raw') }}
--dbt run-operation generate_source --args '{"schema_name": "jaffle_shop", "database_name": "raw"}'
