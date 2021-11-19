
{{
    config(
        tags=["cast_numeric"]
    )

}}

with cases as (
    --select '0,1'  as the_case union --e.g
    select NULL   as the_case union
    select ''     as the_case union
    select 'a'    as the_case union
    select '0'    as the_case union
    select '1'    as the_case union
    select '-1'   as the_case union
    select '0.1'  as the_case union
    select '-0.1' as the_case union
    select '0.11' as the_case
)
, testing as (
    select
         the_case
        ,case when {{cast_numeric('the_case')}} in (0,1,-1,0.1,-0.1,0.11)
               or {{cast_numeric('the_case')}} is null
        then 'ok'
        else 'nok' end as result
    from cases
)

select the_case from testing where result = 'nok'