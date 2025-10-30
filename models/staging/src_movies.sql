with raw_movies as (select * from projectshowcase.dbtsnowflake.raw_movies)

select movieid as movie_id, title, genere
from raw_movies

// materialsed view -  it is a combination of both table and view.. (stores physical data as well as the query so real time update will be seen)