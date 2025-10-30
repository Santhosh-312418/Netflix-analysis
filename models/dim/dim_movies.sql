with src_movies as (select * from {{ ref('src_movies') }})
select
    movie_id,
    initcap(trim(title)) as movie_title,
    split(genere, '|') as genere_array,
    genere
from src_movies
