with source as (

    select * from {{ source('tpch', 'nation') }}

),

renamed as (

    select

        -- ids
        n_nationkey as nation_key,
        n_regionkey as region_key,

        -- descriptions
        n_name as name,
        n_comment as comment

    from source

)

select * from renamed