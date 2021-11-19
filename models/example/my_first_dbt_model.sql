
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select 1 as id
    union all
    select null as id

)
,source_case as (

    select 1 as id , 'a' as name
    union all
    select 1 as id , 'b' as name

)

select s.id,n.name
from source_data s
inner join source_case n on n.id = s.id

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
