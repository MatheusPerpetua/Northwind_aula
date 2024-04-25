with
    fonte_categorias as (
        select
            cast(id AS int) as pk_categoria
            cast(categoryname as varchar)as nm_categoria
            cast(description as varchar) as descricao_categoria
        from {{ source('erp', 'category') }}
    )

select*
from fonte_categorias