select
    user_id,
    movie_id,
    rating,
    {{ find_averages("USER_ID", "MOVIE_ID") }} as avg_of_usermovie
from
    {{ ref("src_ratings") }}

    -- usage of macros
    
