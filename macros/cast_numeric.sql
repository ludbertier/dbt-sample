/*
    Date: 2020-12-06
    Author: lbertier
    Description: Get one text column and try to cast it into numeric, if it's no possible returns null
    Input:
        col: string
    Output:
        col: numeric or NULL
*/

{% macro cast_numeric(col)-%}
    CASE
        WHEN {{col}} ~ '[+-]?([0-9]*[.])?[0-9]+'
        THEN {{col}}::numeric
    ELSE NULL
    END
{%- endmacro%}
