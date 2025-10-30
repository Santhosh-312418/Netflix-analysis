select movie_id, relavance_score
from {{ ref("fact_genome_scores") }}
where
    relavance_score <= 0

--if this query returns any records then fail else pass
    
