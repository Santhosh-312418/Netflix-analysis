with ep_movies_w_tags as (select * from {{ ref("dim_movies_with_tags") }})

select *
from ep_movies_w_tags
