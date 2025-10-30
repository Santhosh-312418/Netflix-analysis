-- this wont create any view or table in the target place.
with
    rating_summary as (
        select movie_id, avg(rating) as avg_rating, count(*) as total_rating
        from {{ ref("fact_ratings") }}
        group by movie_id
        having count(*) > 100
    )

select m.movie_title, r.avg_rating, r.total_rating
from rating_summary r
join {{ ref("dim_movies") }} m on m.movie_id = r.movie_id
order by r.avg_rating
