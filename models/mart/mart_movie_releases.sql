{{ config(materialized="table") }}

with
    fact_ratings as (select * from {{ ref("fact_ratings") }}),
    seed_dates as (select * from {{ ref("seed_movie_realease_dates") }})

select
    f.*,
    case
        when s.release_date is null then 'Unknown release' else 'known release'
    end as release_info
from fact_ratings f
left join seed_dates s on f.movie_id = s.movie_id

